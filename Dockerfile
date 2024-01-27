FROM python:3.9

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY pipeline.py ingest_data.py 

ENTRYPOINT [ "python", "pipeline.py" ]

