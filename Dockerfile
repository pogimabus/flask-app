FROM python:3-alpine

WORKDIR /usr/src/app

COPY dist/flaskr-1.0.0-py3-none-any.whl ./

RUN pip install wheel
RUN pip install flaskr-1.0.0-py3-none-any.whl
RUN pip install waitress

EXPOSE 8080

ENTRYPOINT [ "waitress-serve", "--call", "flaskr:create_app"]