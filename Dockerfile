# syntax=docker/dockerfile:experimental
FROM python:3.6 AS compile-image
WORKDIR app/

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY manage.py .
COPY start.sh .
COPY config.py .
COPY core/ core/
COPY libertex/ libertex/
COPY mock_data/ mock_data/

FROM python:3.6-slim AS build-image
COPY --from=compile-image /app /app
COPY --from=compile-image /opt/venv /opt/venv

RUN apt-get update
RUN apt-get install -y gdal-bin libgdal-dev python3-gdal binutils libproj-dev
WORKDIR /app

# Make sure we use the virtualenv:
ENV PATH="/opt/venv/bin:$PATH"
RUN chmod +x start.sh
CMD ["sh", "start.sh"]