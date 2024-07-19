from db import db

class Perros(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    idperro_guarderia = db.Column(db.Integer, db.ForeignKey("guarderias.id"), nullable=False)
    idperro_cuidador = db.Column(db.Integer, db.ForeignKey("cuidadores.id"), nullable=False)
    nombre = db.Column(db.String(45), nullable=False)
    raza = db.Column(db.String(45), nullable=False)
    edad = db.Column(db.Integer, nullable=False)
    peso = db.Column(db.Float, nullable=False)
