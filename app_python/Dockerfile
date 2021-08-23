FROM python:3.9-alpine3.14

WORKDIR /app

RUN adduser -D user

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

ENV TIMEZONE=Europe/Moscow
ENV TIME_FORMAT=%H:%M:%S

EXPOSE 8000

USER user

ENTRYPOINT ["gunicorn", "main:app"]
CMD ["-b", "0.0.0.0:8000"]
