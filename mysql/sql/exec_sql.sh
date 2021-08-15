#!/bin/bash

SQL_FILE_PATH=sample.sql
DATABASE=mysql

mysql ${DATABASE} --login-path=local -N < ${SQL_FILE_PATH}