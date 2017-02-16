FROM python:2.7

MAINTAINER David Pose Fernández <dpose@bitergia.com>

ENV SUPYBOT_USER owlbot

# add our user and group first
RUN useradd -d /home/${SUPYBOT_USER}/ -m -s /bin/bash -U ${SUPYBOT_USER}

# supybot (v0.83.4.1)
RUN git clone https://github.com/Supybot/Supybot.git && \
    cd Supybot && \
    git checkout -b v0.83.4.1 && \
    python setup.py install && \
    cd .. && \
    rm -rf Supybot

USER ${SUPYBOT_USER}
WORKDIR /home/${SUPYBOT_USER}

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["supybot"]
