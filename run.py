from app import create_app
import os
from dotenv import load_dotenv

load_dotenv()

port = os.getenv('FLASK_PORT')
app = create_app()

if __name__ == '__main__':
    app.run( host='0.0.0.0', port=5000)