ARG py_ver=3.9
ARG os_ver=alpine

FROM python:${py_ver}-${os_ver}

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src app
WORKDIR app

ENV APP_VERSION=1.0.0

ENTRYPOINT ["python3"]
CMD ["main.py"]