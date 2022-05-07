import sqlite3
from flask import session
from db import get_db

def do_login(uname: str, password: str) -> bool:
    loginsuccess = False
    mydb = get_db()
    print("searching for {}".format(uname))
    user = mydb.execute('SELECT * FROM users WHERE username = ?', (uname,)).fetchone()
    if user is not None:
        print("found {}".format(user))
        if user['upassword'] == password:
            loginsuccess = True
            session.clear()
            session['user_id'] = user['id']
            session['uname'] = user['username']
    return loginsuccess

def get_plantdata() -> dict:
    plantdata = {}
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT recordtime, yield,temperature,humidity FROM greenhousedata'):
        plantdata[row[0]] = [row[1], row[2], row[3]]


    return plantdata

def get_averagetemp() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT temperature FROM greenhousedata'):
        if row[0] != 0.0: 
            total = total + row[0]
            counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_averagehumidity() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT humidity FROM greenhousedata'):
        if row[0] != 0.0: 
            total = total + row[0]
            counter +=1
    average = ("{:.2f}".format(total /counter))
    return average

def get_averageyield() -> float:
    total = 0
    counter = 0
    uid = session['user_id']
    mydb = get_db()
    for row in mydb.execute('SELECT yield FROM greenhousedata'):
        if row[0] != 0.0: 
            total = total + row[0]
            counter +=1
    average = ("{:.2f}".format(total /counter))
    return average