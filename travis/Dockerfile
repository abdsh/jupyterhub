FROM quay.io/travisci/travis-python
USER travis
WORKDIR /home/travis
RUN bash -l -c "nvm install 6; nvm use 6; npm install -g configurable-http-proxy"
ENV PREFIX=/home/travis/virtualenv/python3.4
ENV PATH=$PREFIX/bin:$PATH
RUN python -m pip install --upgrade pip
ADD dev-requirements.txt dev-requirements.txt
ADD requirements.txt requirements.txt
RUN python -m pip install --pre -r dev-requirements.txt

ADD --chown=travis:travis . jupyterhub
WORKDIR jupyterhub
RUN pip install .

CMD ["bash", "-l", "travis/travis.sh"]

