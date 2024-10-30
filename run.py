from app import create_app
from werkzeug.middleware.dispatcher import DispatcherMiddleware



app = create_app()



if __name__ == '__main__':
    app.run( host='0.0.0.0', port=5000)