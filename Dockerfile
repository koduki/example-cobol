FROM ubuntu
RUN apt-get update -qq && apt-get install -y apache2 open-cobol
RUN mkdir app
WORKDIR app
