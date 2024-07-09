FROM python:3.12

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY .github /code

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]