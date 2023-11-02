FROM python:3.9-alpine

WORKDIR /django

COPY . /django

COPY entrypoint.sh /django

RUN pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT ["sh", "entrypoint.sh"]
