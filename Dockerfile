FROM python:3.11-slim
# to send err and output to logs
ENV PYTHONUNBUFFERED 1

EXPOSE 8000
WORKDIR /app

RUN apt-get update 

COPY . .
RUN pip install poetry==1.7 
RUN poetry config virtualenvs.in-project true
RUN poetry install --only main
CMD poetry run uvicorn --host=0.0.0.0 app.main:app
