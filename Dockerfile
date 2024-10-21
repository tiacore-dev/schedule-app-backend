# Используем официальный образ Python в качестве базового
FROM python:3.9-slim

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

# Указываем команду для запуска приложения
CMD ["python", "run.py"]
