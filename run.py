from app import create_app
from werkzeug.middleware.dispatcher import DispatcherMiddleware



app = create_app()

def simple(env, resp):
    resp(b'200 OK', [(b'Content-Type', b'text/plain')])
    return [b'Hello WSGI World']

app.wsgi_app = DispatcherMiddleware(simple, {'/app-schedule': app})


if __name__ == '__main__':
    app.run( host='0.0.0.0', port=5000)