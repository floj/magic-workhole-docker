FROM python:3-slim
RUN useradd -r -s /bin/bash -p 'x' -m -d /home/app -U app
RUN apt-get update && apt-get install -y \
      sudo \
      python-pip \
      build-essential \
      python-dev \
      libffi-dev \
      libssl-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install magic-wormhole
COPY entrypoint.sh /bin
VOLUME /app
WORKDIR /app
ENTRYPOINT ["/bin/entrypoint.sh"]

