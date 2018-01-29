FROM python:2

RUN pip install flask
RUN pip install prometheus_client

WORKDIR ~/flask-prometheus
COPY . ~/flask-prometheus

expose 80

CMD ["python", "app.py"]

