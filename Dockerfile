FROM python:3.10-slim

WORKDIR /code
RUN pip install --no-cache-dir --upgrade fastapi uvicorn
COPY ./hello_world /code/hello_world

CMD ["uvicorn", "hello_world.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
