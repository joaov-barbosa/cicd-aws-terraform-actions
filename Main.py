
import Service
from urllib import request
from flask import Flask, redirect, render_template, request
app= Flask(__name__)

class Variable:
    def __init__(self,name, contents):
        self.name = name
        self.contents = contents


@app.route('/')
def home():
    return render_template('home.html')
 
@app.route('/form')
def form():
    return render_template('form.html')
  
     
@app.route('/create',methods=['POST',])   
def creat():
    name= request.form['name']
    contents= request.form['contents']
    variable1= Variable(name,contents)
    return  redirect('env/'+variable1.name+'/'+variable1.contents)
   

 
@app.route('/config/env')
def env_list():
   return Service.env_list()

@app.route("/env/<variable>/<contents>")
def create_env_var(variable, contents):
 return Service.create_var_linux(variable,contents)


@app.route("/list/running_software")
def list_running_software():
    return Service.list_running_software()


app.run(host='0.0.0.0',port=8080)

