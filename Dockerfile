FROM gcr.io/cloudshell-images/cloudshell:latest

# I just want to have latest python installed on Google Cloud Shell system instead of home folder using pyenv
RUN cd /usr/src && \
    wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz && \
    tar -xf Python-3.7.3.tgz && \
    cd Python-3.7.3 && \
    ./configure --enable-optimizations && \
    make altinstall