FROM python:stretch
WORKDIR /myimage

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . . 

ENTRYPOINT ["gunicorn", "-b", ":8090", "main:APP"]

