# Image file gpu
FROM yashikab/gputensorflow-privacy:latest

LABEL Yashio Kabashima

# add configuration files
ADD ./project/requirements.txt /root/project/requirements.txt

# install required pip packages
# upgrade pip
ENV pip /root/.pyenv/shims/pip
RUN $pip install -r /root/project/requirements.txt
RUN $pip install --upgrade tensorflow
# install tensorflow privacy
RUN git clone https://github.com/tensorflow/privacy
RUN $pip install -e /root/privacy

# set to home directory
WORKDIR /root/