## Сервер для отправки сообщений в WhatsApp

### Установка и запуск

Откройте терминал, перейдите в папку с `docker-compose.yml`


Первый запуск (для получения qr-кода):

```
docker-compose up
```

Повторные запуски:

```
docker-compose up -d
```

### Остановка и удаление контейнеров

Чтобы остановить и удалить контейнеры используйте команду `down`:

```
docker-compose down
```

### Клиент

Пример клиента на php в файле `send_message.php`
