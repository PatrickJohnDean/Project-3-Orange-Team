from flask import Flask, send_from_directory

app = Flask(__name__, static_folder='static')

@app.route('/')
def display_map():
    return app.send_static_file('Phillymap.html')

@app.route('/IIJA')
def get_image():
    return send_from_directory('static', 'IIJA_Bar.png')

@app.route('/Repair_Replace')
def get_image_2():
    return send_from_directory('static', 'Repair_vs_replacement.png')

@app.route('/Fern_Hollow')
def get_image_3():
    return send_from_directory('static', 'Fern_Hollow.png')

#@app.route('/USA')
#def display_USA_map():
#    return app.send_static_file('USAmap.html')

if __name__ == '__main__':
    app.run(debug=True)