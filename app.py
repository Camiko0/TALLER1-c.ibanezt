from flask import Flask, request, render_template, redirect, url_for
from flask_restful import Api
from flask_login import LoginManager, login_user
from controllers.guarderia_controller import GuarderiaController
from controllers.perro_controller import PerroController
from controllers.cuidador_controller import CuidadorController
from models.user import User
from dotenv import load_dotenv
from db import db
import os

load_dotenv()

secret_key = os.urandom(24)

#Cargar configuración de la base de datos
app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = f'mysql+pymysql://{os.getenv("DB_USERNAME")}:{os.getenv("DB_PASSWORD")}@{os.getenv("DB_HOST")}/{os.getenv("DB_SCHEMA")}'
app.config["SECRET_KEY"] = secret_key
db.init_app(app)
api = Api(app)
login_manager = LoginManager(app)

@login_manager.user_loader
def load_user(user_id):
    user = User.query.get(user_id)
    if user:
        return user
    return None

@app.route("/")
def main():
    return "Sistema para guarderia"

@app.route("/login", methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template("login.html")
    else:
        username = request.form['username']
        password = request.form['password']
        user = User.query.filter_by(username=username, password=password).first()
        if user:
            login_user(user)
            if user.es_admin:
                return redirect(url_for("perrocontroller"))
            else:
                return render_template("welcome.html", username=username)
                #return redirect(url_for("cuidadorcontroller"))
        
    return render_template("login.html")

api.add_resource(GuarderiaController, '/guarderias')
api.add_resource(PerroController, '/perros')
api.add_resource(CuidadorController, '/cuidadores')
