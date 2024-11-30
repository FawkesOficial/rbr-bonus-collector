FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/FawkesOficial/rbr-api.git /app/rbrapi

RUN pip install --no-cache-dir /app/rbrapi

COPY main.py logger.py /app/

ENTRYPOINT ["python", "main.py"]
