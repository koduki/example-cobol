FROM nacyot/cobol-open:apt
RUN apt-get update -qq && apt-get install apache2
