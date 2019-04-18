# Image file gpu
FROM yashikab/cputensorflow:latest

LABEL Yashio Kabashima

# add configuration files
ADD ./project/requirements.txt /root/project/requirements.txt

# install required pip packages
# upgrade pip
ENV pip /root/.pyenv/shims/pip
RUN $pip install -r requirements.txt

# install tensorflow privacy
RUN git clone https://github.com/tensorflow/privacy
RUN cd privacy
RUN $pip install -e .

# set to home directory
WORKDIR /root/