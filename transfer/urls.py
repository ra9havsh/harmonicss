from . import views
from django.conf.urls import url

app_name = 'transfer'

urlpatterns = [
    url(r'^$', views.homepage, name='homepage'),
    url(r'^message/(?P<msg>\w+?)/$', views.transfer, name='message'),
]

