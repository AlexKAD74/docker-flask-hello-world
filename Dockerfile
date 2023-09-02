FROM python:3.9

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app/
RUN pip3 install --no-cache-dir -r requirements.txt

# указать порт для проброски (но это не значит что он уже пробрасыается)
EXPOSE 8080

# переменные окружения
# TZ - временная зона
#ENV TZ Europe/Moscow - добавили в строку запуска контейнера

CMD ["python", "app.py"]

# docker build -t flask-hello