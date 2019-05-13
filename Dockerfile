FROM gcr.io/cloudshell-images/cloudshell:latest

# update all the installed stuff
RUN apt update && apt dist-upgrade -y

# install stuff
RUN apt install zsh -y

# I just want to have latest python installed on Google Cloud Shell system instead of home folder using pyenv
RUN cd /usr/src && \
    wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz && \
    tar -xf Python-3.7.3.tgz && \
    cd Python-3.7.3 && \
    ./configure --enable-optimizations && \
    make altinstall

RUN pip3.7 install virtualenv virtualenv-wrapper