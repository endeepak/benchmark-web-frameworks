from django.conf.urls import patterns, url

from .views import list_polls


urlpatterns = patterns('',
    url(r'^$', list_polls, name="list_polls"),
)