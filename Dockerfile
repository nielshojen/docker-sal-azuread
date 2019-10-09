FROM macadmins/sal:latest
MAINTAINER Niels Højen <niels@hojen.net>

RUN apt-get update && apt-get install -y python-pip
#RUN pip install django-azure-ad-auth
RUN pip install django-auth-adfs

RUN mv /home/app/sal/sal/settings.py /home/app/sal/sal/origsettings.py
ADD settings.py /home/app/sal/sal/settings.py
RUN mv /home/app/sal/sal/urls.py /home/app/sal/sal/origurls.py
ADD urls.py /home/app/sal/sal/urls.py
