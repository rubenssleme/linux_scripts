import pymysql
from flask import Flask, request, jsonify
from flask_restful import Resource, Api
from sqlalchemy import create_engine
from json import dumps
import mysql.connector
from mysql.connector import errorcode
app = Flask(__name__)
api = Api(app)



class Provento(Resource):
    def get(self):
        conn = mysql.connector.connect(host='localhost', user='root', password='913328', database='draftdatabase')
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("select * from proventos_recebidos")
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp  
        cursor.close() 
        conn.close()

class ProventoSum(Resource):
    def get(self):
        conn = mysql.connector.connect(host='localhost', user='root', password='913328', database='draftdatabase')
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT Produto,Preco_unitario,Valor_liquido, SUM(Valor_liquido) AS Valor  FROM draftdatabase.proventos_recebidos GROUP BY Produto;")
        rows = cursor.fetchall()
        resp = jsonify(rows)
        resp.status_code = 200
        return resp  
        cursor.close() 
        conn.close()
              

api.add_resource(Provento, '/proventos') 		    
api.add_resource(ProventoSum, '/proventos_sum') 
if __name__ == '__main__':
    app.run()

