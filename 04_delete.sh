#!/bin/bash

cd ~/lab0 &&
{
    rm -f kostya_room/kostya_diary
    rm kostya_room/today_orders
    rm bar_entrance

    rm bar_message
    cat claude_monet/bar/owner_message
    rm claude_monet/bar/owner_message

    rm claude_monet/storage/supplier_note
    rmdir empty_crates
    rm -r claude_monet/storage/cellar_backup

    ls -lR .
}