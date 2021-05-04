FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

# good for solo
RUN mkdir -p ~/.ssh
WORKDIR /app
RUN apt-get update -o Acquire::Check-Valid-Until=false && apt-get -y --force-yes  dist-upgrade && \
    apt-get -y --force-yes install  mc curl wget ssh && \
    apt-get autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*