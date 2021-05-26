FROM openjdk:11-slim

COPY --from=python:3.7-slim / /

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["eddy-python-beam-bridge"]