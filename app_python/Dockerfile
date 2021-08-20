FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV TIMEZONE=Europe/Moscow
ENV TIME_FORMAT=%H:%M:%S

ENTRYPOINT ["gunicorn", "main:app"]
CMD ["-b", "0.0.0.0:8000"]
