#!/bin/bash
set -e

cd ~/lab0

cp kostya_room/kostya_diary claude_monet/office/bartender_report
cp -R claude_monet/wine_cellar claude_monet/storage/cellar_backup
ln -s ../claude_monet/bar/evening_orders kostya_room/today_orders
ln -s claude_monet/bar bar_entrance
ln bar_message claude_monet/bar/owner_message
cat claude_monet/hall/reservations claude_monet/hall/nastya_note > claude_monet/hall/service_plan
cat claude_monet/storage/supplier_note >> claude_monet/wine_cellar/inventory
mv claude_monet/wine_cellar/nagiev_wine claude_monet/office/special_wine

ls -liR