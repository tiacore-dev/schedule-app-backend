from flask import request, jsonify
from flask_restx import Namespace, Resource

home_ns = Namespace('app-schedule', description='Check running')

@home_ns.route('/home')
class Home(Resource):
    def get(self):
        return {"message": "The service is running", "Hello,": "world!", "It's": "Done"}