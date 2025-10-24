FROM debian:latest

RUN apt update
RUN apt install -y curl g++ gcc git make tmux vim wget
RUN git clone https://github.com/pjreddie/darknet
WORKDIR darknet
RUN make
RUN wget https://data.pjreddie.com/files/yolov3.weights
WORKDIR /
COPY scripts/traffic.sh /traffic.sh
ENTRYPOINT ["./traffic.sh"]
