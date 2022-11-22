from flask import Flask,  render_template, request, redirect, url_for,flash

import pymysql

app = Flask(__name__)


@app.route('/')
def hme():
    return render_template("index.html")

@app.route('/index')
def ho():
    return render_template("index.html")

@app.route('/compras')
def compras():
    return render_template("compras.html")

@app.route('/carrusel')
def empresa():
    return render_template("carrusel.html")

@app.route('/contacto')
def contacto():
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='contacto')
    cursor = conn.cursor()
    return render_template("contacto.html")

@app.route('/contacto_fagrega', methods=['POST'])
def contacto_fagrega(): 
    if request.method == 'POST':
        nombre = request.form['nombre']
        correo = request.form['correo']
        telefono= request.form['telefono']
        problema = request.form['problema']
        direccion = request.form['direccion']
        fecha = request.form['fecha']
        conn = pymysql.connect(host='localhost', user='root', passwd='', db='contacto')
        cursor = conn.cursor()
        cursor.execute('insert into contacto1 (nombre,correo,telefono,problema,direccion,fecha) values (%s,%s,%s,%s,%s,%s)',(nombre,correo,telefono,problema,direccion,fecha))
        conn.commit()
    return redirect(url_for('contacto'))

@app.route('/registro')
def registro():
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='contacto' )
    cursor = conn.cursor()
    cursor.execute('select idcontacto, nombre from contacto1 order by idcontacto')
    datos = cursor.fetchall()
    return render_template("registro.html", rec=datos ,dat='')

@app.route('/contacto_fdetalle/<string:idP>', methods=['GET'])
def contacto_fdetalle(idP):
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='contacto')
    cursor = conn.cursor()
    cursor.execute('select idcontacto, nombre from contacto1 order by idcontacto')
    datos = cursor.fetchall()
    cursor.execute('select idcontacto,nombre,correo,telefono,problema,direccion,fecha from contacto1 where idcontacto = %s', (idP))
    dato = cursor.fetchall()
    return render_template("registro.html", rec=datos, dat=dato[0])

@app.route('/registro_borrar/<string:idP>')
def registro_borrar(idP):
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='contacto')
    cursor = conn.cursor()
    cursor.execute('delete from contacto1 where idcontacto = %s',(idP))
    conn.commit()
    return redirect(url_for('registro'))

if __name__ == "__main__":
    app.run(debug=True)

