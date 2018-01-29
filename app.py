from flask import Flask
from flask_prometheus import monitor 

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello'

monitor(app, port=8000)
app.run()
