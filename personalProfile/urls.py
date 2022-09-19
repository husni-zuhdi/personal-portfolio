from django.urls import path
from . import views

urlpatterns = [
    path("profile/", views.project_index, name="profile"),
]