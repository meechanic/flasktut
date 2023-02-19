FROM python:bullseye
RUN python3 -m venv venv /opt/venv
COPY . /tmp/
RUN . /opt/venv/bin/activate && pip install -r /tmp/requirements.txt && pip install /tmp
EXPOSE 8000
CMD . /opt/venv/bin/activate && gunicorn -b "0.0.0.0:${PORT}" "flasktut:create_app()"
