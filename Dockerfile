FROM ubuntu:latest
RUN apt update
RUN apt upgrade
RUN apt install -y python3 python3-pip git 
RUN git clone https://github.com/jeftervidal/esp-iothub-aks.git
RUN python3 -m pip install flask
EXPOSE 8080
COPY main/home/main

ENTRYPOINT FLASK_APP=/home/main.py flask run --host=0.0.0.0 --port=8080

