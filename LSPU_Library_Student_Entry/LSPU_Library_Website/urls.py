from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.homepage, name = 'homepage'),
    path('admin_login/', views.admin_login, name = 'admin_login'),
    path('admin_logout/', views.admin_logout, name = 'admin_logout'),
    path('adminpage/', views.adminpage, name = 'adminpage'),
    path('create_qrcode/', views.create_qrcode, name = 'create_qrcode'),
    path('show_qrcode/', views.show_qrcode, name = 'show_qrcode'),
    path('register_entry/', views.register_entry, name = 'register_entry'),
    path('student_search/', views.student_search , name = 'student_search'),
    path('scan_entry_qrcode/', views.scan_entry_qrcode , name = 'scan_entry_qrcode'),
    path('confirm_seats/', views.confirm_seats, name = 'confirm_seats'),
    path('entry_manual/', views.entry_manual, name = 'entry_manual'),


]