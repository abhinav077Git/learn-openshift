FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install --upgrade pip==20.0.1
RUN pip install flask 

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080