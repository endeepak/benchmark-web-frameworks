from django.conf.urls import patterns, url

from .views import list_polls, list_polls_stubbed


urlpatterns = patterns('',
    url(r'^$', list_polls, name="list_polls"),
    url(r'^stubbed/$', list_polls_stubbed, name="list_polls_stubbed"),
)