FROM python:3.10-slim

RUN mkdir -p /app
COPY . main.py requirements.txt /app/
WORKDIR /app
RUN python -m venv venv
RUN . venv/bin/activate && pip install -r requirements.txt
EXPOSE 8080
CMD [ "venv/bin/python", "main.py" ]

