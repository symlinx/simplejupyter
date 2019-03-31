FROM python:slim

RUN apt update \
    && apt install -y texlive-xetex curl python pandoc --no-install-recommends \
    && curl https://bootstrap.pypa.io/get-pip.py | python2 \
    && apt remove curl -y && apt clean -y && apt autoremove -y \
    && groupadd -g 1000 jupyter \
    && useradd -m -d /home/jupyter/ -s /bin/bash -u 1000 -g 1000 jupyter \
    && su - jupyter -c "touch /tmp/firstrun"

COPY files/entrypoint.sh /entrypoint.sh
USER jupyter
ENV PATH="/home/jupyter/.local/bin:${PATH}"
EXPOSE 8888
VOLUME ["/home/jupyter/"]
WORKDIR /home/jupyter
ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["jupyter", "notebook", "--notebook-dir=~/notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
