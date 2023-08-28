FROM python:3.10-slim

RUN mkdir -p /app
COPY . /app/
WORKDIR /app
COPY requirements.txt /app/  
RUN pip install -r requirements.txt
RUN python -m textblob.download_corpora
EXPOSE 8080
CMD [ "python", "main.py" ]
