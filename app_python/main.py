'''Simple HTTP time server'''

import os
from datetime import datetime

from pytz import timezone
from flask import Flask, render_template

app = Flask(__name__)

timezone_name = os.environ.get('TIMEZONE', 'Europe/Moscow')
time_format = os.environ.get('TIME_FORMAT', '%H:%M:%S')
zone = timezone(timezone_name)

@app.route("/")
def index():
    '''Main page endpoint'''
    time = datetime.now(zone).strftime(time_format)
    return render_template('index.html', timezone_name=timezone_name, time=time)
