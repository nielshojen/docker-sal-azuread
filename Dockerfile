FROM macadmins/sal:3.3.16
MAINTAINER Niels Højen <niels@hojen.net>

RUN apt-get update && apt-get install -y python-pip
RUN pip install --upgrade pip
RUN pip install django-auth-adfs

RUN mv /home/app/sal/sal/settings.py /home/app/sal/sal/origsettings.py
ADD settings.py /home/app/sal/sal/settings.py
RUN mv /home/app/sal/sal/urls.py /home/app/sal/sal/origurls.py
ADD urls.py /home/app/sal/sal/urls.py
