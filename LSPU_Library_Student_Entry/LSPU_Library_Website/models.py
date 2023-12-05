from django.db import models
from django.utils import timezone
# Create your models here.

class Student(models.Model):

    student_full_name = models.CharField(max_length = 100)
    student_id = models.CharField(max_length = 20, unique = True)
    student_department = models.CharField(max_length = 50)
    student_course = models.CharField(max_length = 50)
    student_year = models.IntegerField()
    student_qrcode_image = models.BinaryField(blank=True, null=True)

    def __str__(self):
        return f"Student : {self.student_id}"


def get_current_time():
    return timezone.localtime(timezone.now()).time()

class History(models.Model):

    date_of_entry = models.DateField(default = timezone.now)
    student_full_name = models.CharField(max_length = 100, default = 'invalid')
    student_id = models.CharField(max_length = 50)
    student_department = models.CharField(max_length = 50)
    student_course = models.CharField(max_length = 50)
    purpose_of_entry = models.CharField(max_length = 200)
    time_of_entry = models.TimeField(default=get_current_time)
    time_of_out = models.TimeField(null=True, blank=True)

    def update_time_of_out(self):
        # Update time_of_out to the current time
        self.time_of_out = timezone.now().time()
        self.save()

