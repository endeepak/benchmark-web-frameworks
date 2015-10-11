from django.shortcuts import render
from .models import Question

def list_polls_stubbed(request):
    return render(request, 'polls/questions.html', {'questions': []})

def list_polls(request):
    return render(request, 'polls/questions.html', {'questions': Question.objects.all()})
