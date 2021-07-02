FROM python:3

RUN wget -O schort.tar.gz https://github.com/sqozz/schort/archive/refs/heads/master.tar.gz \
 && tar -xzf schort.tar.gz \
 && rm schort.tar.gz \
 && mv schort-master /schort

RUN pip install --no-cache-dir Flask uwsgi

WORKDIR /schort
VOLUME /schort/data
EXPOSE 8080

RUN ["python", "-c", "import schort; schort.initDB()"]

CMD ["uwsgi","--http", ":8080", "--wsgi-file","schort.wsgi"]
