FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y dovecot-imapd dovecot-pop3d dovecot-lmtpd
RUN useradd vmail

ADD start /start
RUN chmod +x /start

EXPOSE 995
EXPOSE 993
EXPOSE 24

VOLUME /data
