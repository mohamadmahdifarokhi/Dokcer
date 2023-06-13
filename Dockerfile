FROM python:latest

LABEL Maintainer = "markdownpro@gmail.com"

LABEL Owner = "TFour"

LABEL version = "1.1"

WORKDIR /opt/project

COPY . /opt/project

RUN pip install -U pip

RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

CMD ["gunicorn", "OnlySSH.wsgi", ":8000"]
