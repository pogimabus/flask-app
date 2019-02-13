This is a Dockerized Flask application template.

It is recommended that you use a virtualenv with Flask installed (instructions
[here](http://flask.pocoo.org/docs/1.0/installation/)); once that is set up and your virtualenv is active you can do
the following:
### Run / Develop locally without Docker
Get set up to run a test server that will reload upon detection of source changes with:  
```bash
export FLASK_APP=flaskr
export FLASK_ENV=development
```
and then finally run the test server with:
```bash
flask run
```
### Build / Run locally with Docker
```bash
# Build the app distributable
python setup.py bdist_wheel
# Build the docker image
docker build -t flaskr .
# Spin up a detached container, after which the app should be available at localhost:8080
docker run -d -p 8080:8080 flaskr
```
