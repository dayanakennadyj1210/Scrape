FROM python:latest
RUN apt update 
RUN pip install boto3
RUN pip install requests
WORKDIR /var/myapp
COPY botos3.py /var/myapp/botos3.py
CMD ["sh", "-c", "python /var/myapp/botos3.py"]