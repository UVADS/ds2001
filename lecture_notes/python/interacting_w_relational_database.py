# -*- coding: utf-8 -*-
"""
Created on Sat Sep 18 09:40:48 2021

@author: apt4c
"""

# First Steps Interacting with a Relational Database

# download and install sqlite db
https://www.sqlite.org/download.html
sqlite-dll-win64-x64-3360000.zip

# from terminal cd to sqlite
C:\Users\apt4c\sqlite>

# create db called stocks
> sqlite3 stocks.db

# python
import sqlite3

stocks = [
        ('NVDA',219,-3.42),
        ('AAPL',146,-2.73),
        ('GOOG',2829.27,-58.20)]


# connect to db           
conn = sqlite3.connect(r"C:/Users/apt4c/sqlite/stocks.db")

# create cursor
cur = conn.cursor()

# create table
cur.execute('create table holdings (ticker text, price real, chg real)')
conn.commit()

# insert data
cur.executemany('insert into holdings values (?,?,?)', stocks)
conn.commit()

# query the table
# print all the rows
for row in conn.execute('select * from holdings'):
    print(row)

# print all the rows where price > 200
for row in conn.execute('select * from holdings where price > 200'):
    print(row)

# print all the rows where price > 200. show only ticker, price
for row in conn.execute('select ticker, price from holdings where price > 200'):
    print(row)

# save the resultant dataset in a list
data = []
for row in conn.execute('select ticker, price from holdings where price > 200'):
    data.append(row)

# sqlite commands

# list databases
sqlite> .databases
main: C:\Users\apt4c\sqlite\stocks.db r/w

# list tables
sqlite> .tables
holdings

# select all data from holdings
sqlite> select * from holdings;
NVDA|219.0|-3.42
AAPL|146.0|-2.73
GOOG|2829.27|-58.2
