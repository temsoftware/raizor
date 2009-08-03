#!/bin/bash
cd /media/marco/Ruby/raizor/db/backup/
mysqldump --add-drop-table -u root -pmaria123 -x -e -B raizor | gzip > raizor_$(date +'%d-%m-%Y').sql
