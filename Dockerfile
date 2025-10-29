FROM ultralytics/ultralytics:latest-cpu

RUN apt update
RUN apt install -y less tmux vim
COPY scripts/traffic.sh /traffic.sh
ENTRYPOINT ["/traffic.sh"]
