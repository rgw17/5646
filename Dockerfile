FROM python3.6-slim

RUN mkdir /application
WORKDIR /application

COPY requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENV PYTHONUNBUFFERED 1

EXPOSE 8001
STOPSIGNAL SIGINT

ENTRYPOINT["python"]
CMD ["app.py"]