from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    # path('admin/', admin.site.urls),
    path('', views.test),
    path('login/', views.test),
    path('signup/', views.test),
    path('question/<int:num>/', views.question),
    path('ask/', views.test),
    path('popular/', views.test),
    path('new/', views.test),
]