# Python Web server

Sample project to practise Docker


## Getting Started
### Dependencies
* Docker
* Python 3

### Installing
 ```
 pip3 install poetry
 poetry install
 ```


### Executing program

* How to run the program
* Step-by-step bullets
```
# To run the server
poetry run uvicorn app.main:app
# To run test
poetry run pytest

# To build image
docker build -t web-server  .
# To run image
docker run -it  -p  8000:8000  web-server
```

### To verify is server is up and running
```
curl -X 'GET' \
  'http://127.0.0.1:8000/' \
  -H 'accept: application/json'
```