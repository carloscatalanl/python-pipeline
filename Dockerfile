FROM python:3

EXPOSE 4000

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

CMD [ 'python', "src/app.py"]