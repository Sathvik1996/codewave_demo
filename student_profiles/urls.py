from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('login', views.login, name='login'),
    path('register', views.register, name='register'),
    path('delete/<int:classlisting_delete_id>', views.classlisting_delete, name='classlisting_delete'),
    path('save/<int:classlisting_save_id>', views.classlisting_save, name='classlisting_save'),
    path('detail/<int:classlisting_detail_id>', views.classlisting_detail, name='classlisting_detail'),
    path('dashboard', views.dashboard, name='dashboard')
]












