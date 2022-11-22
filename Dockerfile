FROM python:latest
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY mqtt-launcher.py mqtt-launcher.py
WORKDIR /data
CMD ["python3", "/app/mqtt-launcher.py"]
# docker image build -t marazmarci/mqtt-launcher .
# docker run --name=mqtt-launcher --restart=unless-stopped marazmarci/mqtt-launcher