from django.urls import path, include
from .views import (
    TodoListView, 
    TodoDetailApiView
)

urlpatterns = [
    path('api/', TodoListView.as_view()),
    path('api/<int:todo_id>', TodoDetailApiView.as_view())
]
