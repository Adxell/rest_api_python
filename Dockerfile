FROM python:3.10-alpine


ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /
COPY ./entrypoint.sh /


RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /requirements.txt

WORKDIR /app

COPY ./ /app

WORKDIR /app/todo

CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000"]
