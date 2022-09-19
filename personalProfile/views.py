from django.shortcuts import render
from personalProfile.models import Profile

# Create your views here.

def profile(request):
    profile = Profile.objects.all()
    context = {
        'profile' : profile
    }
    return render(request, 'profile.html', context)