import os
from urllib.request import BaseHandler
 
def env_list():
    return os.popen('env').read()

def create_var_linux(variable ,contents):
    var= os.environ[str(variable)]=str(contents)
    os.popen('export'+var)
    return var


def list_running_software():
    return os.popen('ps aux').read()