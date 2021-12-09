FROM python:3.8-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD exec source django-env/bin/activate
CMD exec python manage.py runserver
