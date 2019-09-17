FROM lambci/lambda:build-python3.7

RUN pip install --upgrade pip && pip install -t python numpy

RUN zip -ry9 numpy.zip python

CMD cp numpy.zip /share
