from flask import request, jsonify
from flask_restx import Namespace, Resource

home_ns = Namespace('', description='Check running')

@home_ns.route('/')
class Home(Resource):
    def get(self):
        return {"message": "The service is running"}