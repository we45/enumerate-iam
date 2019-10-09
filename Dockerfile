FROM python:alpine

RUN apk add git && git clone https://github.com/andresriancho/enumerate-iam.git

RUN pip install -r /enumerate-iam/requirements.txt

ENTRYPOINT ["python", "/enumerate-iam/enumerate-iam.py"]