import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, World!"

@app.route('/health')
def health():
    return "OK", 200

@app.route('/ready')
def ready():
    return "OK", 200

if __name__ == '__main__':
    port = int(os.environ.get('FLASK_PORT', 5000))
    app.run(host='0.0.0.0', port=port)