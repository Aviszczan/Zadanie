FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Instalujemy sterownik do bazy danych
RUN pip install --no-cache-dir Django==4.2 psycopg2-binary django-environ

# Kopiujemy pliki z Twojego dysku do wnętrza kontenera
COPY . /app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]