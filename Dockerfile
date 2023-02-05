FROM python:3.9-alpine
ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY . .
RUN pip3 install django djangorestframework

CMD python manage.py makemigrations
CMD python manage.py migrate
CMD python manage.py runserver 0.0.0.0:80