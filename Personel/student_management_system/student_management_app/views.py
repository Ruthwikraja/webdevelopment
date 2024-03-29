from student_management_app.models import Courses, CustomUser
from django.http.response import HttpResponse
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from student_management_app.EmailBackEnd import EmailBackEnd
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.urls import reverse

def ShowLoginPage(request):
        return render(request,"login.html")

def doLogin(request):
    if request.method!="POST":
        return HttpResponse("<h2>Method Not Allowed</h2>")
    else:
        user=EmailBackEnd.authenticate(request,username=request.POST.get("email"),password=request.POST.get("password"))
        if user!=None:
            login(request,user)
            if user.user_type=="1":
                return HttpResponseRedirect('/admin_home')
            elif user.user_type=="2":
                return HttpResponseRedirect('/add_staff')

            else:
                return HttpResponseRedirect('/student_home')    

    
    
        else: 
            messages.error(request,"Invalid Login Details")
            return HttpResponseRedirect("/")

def GetUserDetails(request):
    if request.user!=None:
        return HttpResponse("User : "+request.user.email+" usertype : "+str(request.user.user_type))
    else:
        return HttpResponse("Please Login First")

def logout_user(request):
    logout(request)
    return HttpResponseRedirect("/")             

def signup_admin(request):
    return render(request,"signup_admin_page.html")    

def signup_student(request):
    courses=Courses.objects.all()
    return render(request,"signup_student_page.html",{"courses":courses})     

def do_student_signup(request):
    first_name=request.POST.get("first_name")
    last_name=request.POST.get("last_name")
    username=request.POST.get("username")
    email=request.POST.get("email")
    password=request.POST.get("password")
    address=request.POST.get("address")
    course_id=request.POST.get("course")
    sex=request.POST.get("sex")

    profile_pic=request.FILES['profile_pic']
    fs=FileSystemStorage()
    filename=fs.save(profile_pic.name,profile_pic)
    profile_pic_url=fs.url(filename)

    try:
        user=CustomUser.objects.create_user(username=username,password=password,email=email,last_name=last_name,first_name=first_name,user_type=3)
        user.students.address=address
        course_obj=Courses.objects.get(id=course_id)
        user.students.course_id=course_obj

        user.students.gender=sex
        user.students.profile_pic=profile_pic_url

        user.save()
        messages.success(request,"Successfully added student")
        return HttpResponseRedirect(reverse("show_login"))
    except:    
        messages.error(request,"Faild added student")
        return HttpResponseRedirect(reverse("show_login"))     

def do_admin_signup(request):
    username=request.POST.get("username")
    email=request.POST.get("email")
    password=request.POST.get("password")

    try:
        user=CustomUser.objects.create_user(username=username,password=password,email=email,user_type=1)
        user.save()

        messages.success(request,"Successfully created admin")
        return HttpResponseRedirect(reverse("show_login"))
    except:    
        messages.error(request,"Faild to create admin")
        return HttpResponseRedirect(reverse("show_login"))
