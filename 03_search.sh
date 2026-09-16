#!/bin/bash

cd ~/lab0 &&
ls -lR . | grep '^-' | grep -v 'report' | sort -k5,5nr | head -n 5
grep -rihE 'костя|настя' . | grep -vi 'отчёт' | sort -r | head -n 6
grep -l 'вино' claude_monet/wine_cellar/* claude_monet/storage/cellar_backup/* | wc -l
{
    head -n 1 claude_monet/bar/cocktail_menu
    tail -n 1 claude_monet/bar/cocktail_menu
    head -n 1 claude_monet/bar/evening_orders
    tail -n 1 claude_monet/bar/evening_orders
} | grep -iE 'коктейл|заказ' | sort
grep -vi 'послед' claude_monet/hall/service_plan | grep -iE 'гост|заказ' | sort -r | head -n 4 | wc -w
ls -liR . | grep -E '^ *[0-9]+ +-[^ ]* +2 ' | sort -k1,1n
ls -lR . | grep '^l' | sort -k9,9r | head -n 1