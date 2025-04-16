FROM python:3.10

ARG SECRET_PROXY

RUN apt-get update && apt-get install -y --no-install-recommends gcc && rm -rf /var/lib/apt/lists/*

COPY list_library.txt .

ENV no_proxy="169.254.169.254,metadata,metadata.google.internal,metadata.google.internal."
ENV http_proxy=$SECRET_PROXY
ENV https_proxy=$SECRET_PROXY

RUN pip install --upgrade pip && pip install -r list_library.txt

WORKDIR /app
