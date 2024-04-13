# EEL Library

Simple book api ,

## installation

Python3 must be already installed

```shell
git clone https://github.com/M4Xpy/eelLibrary
python3 -m venv venv
source venv/bin/activate
pip install requirements.txt
python main.py
```



## Run  with  docker

Docker  should  be  installed
```shell
sudo docker build -t eel-app .
sudo docker run -p 8000:8000 eel-app
```