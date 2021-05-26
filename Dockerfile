FROM python:3.7-slim as requirements

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["eddy-python-beam-bridge"]