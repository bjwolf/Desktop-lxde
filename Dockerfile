FROM ubuntu:14.04
MAINTAINER Michael Meng <bjmgw@qq.com>

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends supervisor \
        openssh-server pwgen sudo vim-tiny \
        net-tools \
        lxde x11vnc xvfb \
        gtk2-engines-murrine ttf-ubuntu-font-family \
        libreoffice firefox \
        fonts-wqy-microhei \
        language-pack-zh-hant language-pack-gnome-zh-hant firefox-locale-zh-hant libreoffice-l10n-zh-tw \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* 


ADD noVNC /noVNC/
ADD startup.sh /
ADD supervisord.conf /etc/
EXPOSE 6080
WORKDIR /root
ENTRYPOINT ["/startup.sh"]
