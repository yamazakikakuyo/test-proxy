FROM python:3.10

RUN apt-get update && apt-get install -y --no-install-recommends gcc && rm -rf /var/lib/apt/lists/*

COPY list_library.txt .

ENV no_proxy="169.254.169.254,metadata,metadata.google.internal,metadata.google.internal."
ENV http_proxy="http://172.20.80.32:3128/"
ENV https_proxy="http://172.20.80.32:3128/"

RUN pip install --upgrade pip && pip install -r list_library.txt

WORKDIR /app
