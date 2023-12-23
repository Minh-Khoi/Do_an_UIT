import CONST_ROOT
from django.shortcuts import render



# Create your views here.
from django.http import HttpResponse
def index(request):
    return HttpResponse("Hello, world. You're at the polls index. 55555")


def home(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/index.html')


def don_vi(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/don_vi.html')


def thong_tin_hc(request):
    return render(request, CONST_ROOT.ROOT + '/mysite/templates_html/thongke.html')

