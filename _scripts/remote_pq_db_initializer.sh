#!/bin/bash
psql -U postgres -c 'drop database if exists data_db;'
psql -U postgres -c 'create database data_db;'
psql -U postgres -d data_db -c 'create table remote_data();'