# Данный Dockerfile предназначен для сборки и запуска приложения на основе Python
FROM python:3.10-alpine

# Устанавливаем переменную окружения PYTHONUNBUFFERED, чтобы отключить буферизацию вывода
ENV PYTHONUNBUFFERED=1

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл requirements.txt и устанавливаем зависимости
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Копируем все файлы приложения в контейнер
COPY . .

# Открываем порт 8000 для доступа к приложению
EXPOSE 8000

# Собираем статические файлы и запускаем приложение
CMD python manage.py collectstatic --noinput && python manage.py migrate && python manage.py runserver 0.0.0.0:8000
