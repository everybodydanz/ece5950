from django.shortcuts import render

from rest_framework import viewsets
from .serializers import *
from .models import *

# Create your views here.
class CityViewSet(viewsets.ModelViewSet):
    queryset = City.objects.all().order_by('state')
    serializer_class = CitySerializer

