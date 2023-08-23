FROM python:3.10-alpine3.18

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ENV APP=app.py
ENV HOST=0.0.0.0
ENV PORT=80

CMD ["flask", "run"]