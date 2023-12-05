from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, logout, login
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .models import Student, History
from io import BytesIO
import base64
import qrcode

# Create your views here.

def homepage(request):

    return render(request, 'homepage.html')

def admin_login(request):
    
    if request.method == 'POST':
        
        admin_account = request.POST.get('username')
        admin_password = request.POST.get('password')

        user = authenticate(username = admin_account, password = admin_password)

        if user is not None:

            login(request, user)
            
            return redirect('adminpage')
        else:
            messages.error(request, 'Invalid username or password.')
    
    return render(request, 'homepage.html')
            

def admin_logout(request):
    
    logout(request)

    return render(request, 'homepage.html')

@login_required
def adminpage(request):

    students = Student.objects.all()
    historys = History.objects.all()

    context = {
        'students' : students,
        'historys' : historys
    }

    return render(request, 'adminpage.html', context)

def create_qrcode(request):

    context = {}

    if request.method == 'POST':
        full_name = request.POST['full-name']
        student_id = request.POST['student-id']
        college_department = request.POST['college-department']
        course = request.POST['course']
        year = request.POST['year']

        # Validate the data as needed

        # Generate QR code image
        qr = qrcode.QRCode(
            version=1,
            error_correction=qrcode.constants.ERROR_CORRECT_L,
            box_size=10,
            border=4,
        )
        qr.add_data(f"{student_id}")
        qr.make(fit=True)

        img = qr.make_image(fill_color="black", back_color="white")

        # Convert the Image object to BytesIO
        img_io = BytesIO()
        img.save(img_io, format='PNG')

        # Save the data to the database using your Student model
        student = Student(
            student_full_name=full_name,
            student_id=student_id,
            student_department=college_department,
            student_course=course,
            student_year=year,
            student_qrcode_image=img_io.getvalue()
        )
        student.save()

        context = {
            'student': full_name,
            'qrcode': student.student_qrcode_image
        }

    return render(request, 'showqrcode.html', context)

def show_qrcode(request):

    return render(request, 'showqrcode.html')

def register_entry(request):

    if request.method == 'POST':

        student_full_name = request.POST.get('student-name', '')
        student_id = request.POST.get('student-id', '')
        student_course = request.POST.get('student-course', '')
        student_department = request.POST.get('student-department', '')
        purpose_of_entry = request.POST.get('purpose', '')

        history_entry = History(
            student_id = student_id,
            student_course = student_course,
            student_department = student_department,
            purpose_of_entry = purpose_of_entry,
            student_full_name = student_full_name
        )
        history_entry.save()

    return render(request, 'confirmseats.html')

def entry_manual(request):

    return render(request, 'entryqrcode.html') 

def student_search(request):
    student_info = None

    if request.method == 'POST':
        result_input = request.POST.get('result-input')

        try:

            student = Student.objects.get(student_id = result_input)
          #  history = History.objects.filter(student_id=result_input).latest('time_of_entry')

           # if history.time_of_out is None:
          #      history.update_time_of_out()

            student_info = {
                'Id' : student.student_id,
                'Name': student.student_full_name,
                'Course': student.student_course,
                'Year' : student.student_year,
                'Department' : student.student_department
                # Add more fields as needed
            }

        except Student.DoesNotExist:
            student_info = None
       # except History.DoesNotExist:
        #    student_info = None

    return render(request, 'scanentryqrcode.html', {'student_info': student_info})

def scan_entry_qrcode(request):

    return render(request, 'scanentryqrcode.html')

def confirm_seats(request):

    return render(request, 'confirmseats.html')