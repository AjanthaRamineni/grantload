FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install python2.7 python-pip
RUN apt-get -y install git
COPY requirements.txt config.yaml grant.csv grantload/ /usr/src/app/
WORKDIR /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
RUN pwd
CMD python load_grant_data_from_file.py config.yaml grant.csv
