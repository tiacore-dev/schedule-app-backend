# Используем официальный образ Python в качестве базового
FROM python:3.9-slim

# Устанавливаем curl для загрузки wait-for-it
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Копируем wait-for-it.sh в контейнер
RUN curl -o /wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x /wait-for-it.sh

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл зависимостей в рабочую директорию
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь код приложения в рабочую директорию
COPY . .

# Указываем, что контейнер будет слушать на порту 5000
EXPOSE 5053

# Добавьте установку Gunicorn в ваш Dockerfile
RUN pip install --no-cache-dir gunicorn

# Измените команду запуска приложения
#CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app.create_app()"]


