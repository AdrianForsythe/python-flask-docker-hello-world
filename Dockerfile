FROM python:3.9
LABEL org.opencontainers.image.authors="adrian.e.forsythe@gmail.com"

COPY ./requirements.txt /requirements.txt
COPY . /app
WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install -r /requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]