FROM python:3.8-slin

WORKDIR /app

RUN pip install --no-cache-dir jupyterlab

ENV PORT=8080

EXPOSE 8280

# Shell from to expand $PORT
CHD jupyter lab --ip=0.0.0.0 --port=${PORT} --no-browser --allow-root
