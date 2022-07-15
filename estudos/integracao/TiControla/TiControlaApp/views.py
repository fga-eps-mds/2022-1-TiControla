from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse
from .forms import TiControlaForm


def index(request):
    return HttpResponse("Hello World")


def home_view(request):
    context = {}

    # create object of form
    form = TiControlaForm(request.POST or None, request.FILES or None)

    # check if form data is valid
    if form.is_valid():
        # save the form data to model
        form.save()

    context['form'] = form
    return render(request, "home.html", context)
