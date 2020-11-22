FROM ppiper/cf-cli:latest

RUN whoami
USER piper
RUN whoami

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
