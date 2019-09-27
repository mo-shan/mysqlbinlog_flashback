#!/bin/bash
# File Name   : test.sh
# Author      : moshan
# Mail        : mo_shan@yeah.net
# Created Time: 2019-09-27 11:27:17
# Function    : 
#########################################################################
python mysqlbinlog_back.py --host=10.8.101.133 --username=test --port=3306 --password=test --schema=yybgrk  --table=${t} -S mysqld-bin.005087 --binlog_start_time='2019-09-26 21:18:11' --binlog_end_time='2019-09-26 23:58:27' --skip_insert --skip_update -l tmp_sql
python mysqlbinlog_back.py --host=172.28.85.43  --username=test --port=3311 --password=test --schema=mljr  --table=moshan -S mysql-bin.000036 --binlog_start_time='2019-09-27 11:31:40' --skip_insert --skip_update -l tmp_sql
