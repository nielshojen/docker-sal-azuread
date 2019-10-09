from django.conf.urls import include, url
from django.conf import settings
from django.conf.urls.static import static

from sal.origurls import *

urlpatterns += [
    path('oauth2/', include('django_auth_adfs.urls')),
]
