# get the latest ubuntu distribution
FROM ubuntu:latest

# copy gstreamer RTSP server script in
COPY ./gstRtspServer.py /

# Run the usual update and upgrade
RUN apt update
RUN apt upgrade -y
RUN apt install software-properties-common -y

# Install python and pip and all the other necessary nonsense
RUN apt install python3-dev -y
RUN apt install python3-pip -y
RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y

# install pgi and gstreamer rtsp plugin
RUN pip3 install pgi
RUN apt install gir1.2-gst-rtsp-server-1.0 -y



