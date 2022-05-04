import sqlite3
from flask import session, g
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
    for row in mydb.execute('SELECT sensorid, recordtime, readvalue FROM greenhousedata'):
        plantdata[row[0]] = [row[1], row[2]]

    return plantdata
