import flask
from flask import Flask, render_template

import sys, os


server = Flask(__name__)


@server.route("/")
def info():
    return render_template(
        'index.html', 
        title='Информация', 
        py_ver=f'Версия Python {sys.version}', 
        fl_ver=f'Версия Flask {flask.__version__}', 
        ap_ver=f'Версия приложения {os.getenv("APP_VERSION")}')


if __name__ == '__main__':
    server.run(host='0.0.0.0')