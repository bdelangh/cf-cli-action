FROM ppiper/cf-cli:latest

RUN whoami
USER piper
RUN whoami

ADD entrypoint.sh /home/piper/entrypoint.sh
ENTRYPOINT ["/home/piper/entrypoint.sh"]
