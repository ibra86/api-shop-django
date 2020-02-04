FROM python:3.8

RUN pip install -r requirements.txt

COPY . api-shop-django

WORKDIR /api-shop-django

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0:8000"]
