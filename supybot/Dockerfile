FROM python:2.7

MAINTAINER David Pose Fernández <dpose@bitergia.com>

# add our user and group first
RUN useradd -d /home/bitergia/ -m -s /bin/bash -U bitergia

# supybot (v0.83.4.1)
RUN git clone https://github.com/Supybot/Supybot.git && \
    cd Supybot && \
    git checkout -b v0.83.4.1 && \
    python setup.py install && \
    cd .. && \
    rm -rf Supybot

USER bitergia
WORKDIR /home/bitergia

CMD ["supybot -d supybot.conf"]
