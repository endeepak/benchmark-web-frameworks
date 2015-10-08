from django.shortcuts import render
from .models import Question

def list_polls(request):
	# questions = Question.objects
	# questions = []
    return render(request, 'polls/questions.html', {'questions': Question.objects.all()})
