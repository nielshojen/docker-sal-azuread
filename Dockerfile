FROM macadmins/sal:latest
MAINTAINER Niels Højen <niels@hojen.net>

RUN apt-get update && apt-get install -y python-setuptools python-dev libxmlsec1-dev libxml2-dev xmlsec1 python-pip
RUN pip install django-azure-ad-auth
