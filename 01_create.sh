#!/bin/bash

cd ~/lab0 || exit 1

mkdir -p claude_monet/bar
mkdir -p claude_monet/wine_cellar
mkdir -p claude_monet/storage
mkdir -p claude_monet/hall
mkdir -p claude_monet/office
mkdir -p kostya_room
mkdir -p empty_crates

touch claude_monet/bar/cocktail_menu
touch claude_monet/bar/evening_orders
touch claude_monet/wine_cellar/inventory
touch claude_monet/wine_cellar/nagiev_wine
touch claude_monet/storage/supplier_note
touch claude_monet/hall/reservations
touch claude_monet/hall/nastya_note
touch claude_monet/office/vika_schedule
touch kostya_room/kostya_diary
touch bar_message

echo 'Фирменный коктейль от Кости
Лимонад для Насти без сахара
Классический напиток для постоянных гостей
Новый коктейль показать Вике вечером' > claude_monet/bar/cocktail_menu

echo 'Столик два заказал три коктейля
Для банкета подготовить холодные напитки
Нагиев ждёт свой заказ у барной стойки
Последний заказ принимает Костя' > claude_monet/bar/evening_orders

echo 'В погребе осталось двенадцать бутылок вина
Красное вино заказано для банкета
Белое вино подадут к рыбе Феди
Костя проверит остатки после закрытия' > claude_monet/wine_cellar/inventory

echo 'Нагиев попросил оставить любимое вино
Бутылку перенесли на отдельную полку
Костя отвечает за специальный заказ
Подать вино после приезда владельца' > claude_monet/wine_cellar/nagiev_wine

echo 'Поставщик привезёт напитки утром
Новая партия вина отмечена в накладной
Костя должен проверить количество коробок
О повреждениях сразу сообщить Вике' > claude_monet/storage/supplier_note

echo 'Столик четыре забронирован на вечер
У окна ждут постоянных гостей
Большой стол подготовить для банкета
Вика утвердит план рассадки' > claude_monet/hall/reservations

echo 'Настя передаёт заказы Косте лично
Гостям за пятым столиком нужна вода
На банкете напитки подают после закусок
Последний заказ проверить перед закрытием' > claude_monet/hall/nastya_note

echo 'Вика проверяет бар до открытия
Днём проходит встреча с поставщиком
Перед банкетом нужно сверить заказы
После смены Костя сдаёт отчёт' > claude_monet/office/vika_schedule

echo 'Костя открыл бар раньше обычного
Настя помогла расставить бокалы
Нагиев похвалил новый коктейль
Вечером друзья встретились после смены' > kostya_room/kostya_diary

echo 'Бар открывается вместе с рестораном
Костя назначен ответственным за напитки
Вика ждёт отчёт об остатках
Нагиев приедет после восьми часов' > bar_message

chmod 755 claude_monet
chmod u=rwx,g=rx,o= claude_monet/bar
chmod 644 claude_monet/bar/cocktail_menu
chmod u=rw,g=r,o= claude_monet/bar/evening_orders

chmod 750 claude_monet/wine_cellar
chmod u=rw,g=rw,o= claude_monet/wine_cellar/inventory
chmod 640 claude_monet/wine_cellar/nagiev_wine

chmod u=rwx,g=rx,o= claude_monet/storage
chmod u=rw,g=r,o=r claude_monet/storage/supplier_note

chmod 755 claude_monet/hall
chmod 664 claude_monet/hall/reservations
chmod u=r,g=r,o=r claude_monet/hall/nastya_note

chmod u=rwx,g=rx,o= claude_monet/office
chmod 640 claude_monet/office/vika_schedule

chmod 750 kostya_room
chmod u=r,g=r,o= kostya_room/kostya_diary

chmod 700 empty_crates
chmod u=rw,g=r,o=r bar_message

ls -R