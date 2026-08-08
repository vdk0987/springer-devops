FROM python:3-slim

WORKDIR /

COPY hello.py .

CMD ["python", "hello.py"]
