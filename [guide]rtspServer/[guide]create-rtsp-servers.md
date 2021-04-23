# Create multiple RTSP servers

## Background
Create multiple RTSP feeds using Docker containers, GStreamer RTSP plugin and Python

**Note**: In actual projects, Docker containers can be used to scale whatever it is that needs to be scaled (i.e. multiple databases etc.)

## Setting up the container

### 1. Pull the ubuntu base image from docker

*$ docker pull ubuntu:latest*

### 2. Launch a container with that image

1. *$ docker run -dit --name rtsp-server ubuntu:latest*

2. *$ docker exec -it rtsp-server /bin/bash*

#### 2.1 In the container

1. *$ apt update*
2. *$ apt upgrade*
3. *$ apt install python3-dev*
4. *$ apt install python3-pip*
5. *$ pip3 install pgi*
6. *$ apt install gir1.2-gst-rtsp-server-1.0* (Source: https://howtoinstall.co/en/gir1.2-gst-rtsp-server-1.0)

**Note**: Thie order of steps (5) and (6) are important

### 3. Commit the container

*$ docker commit rtsp-server rtsp-server:0.1* 

### 4. Copy the required files into the container (or just use a mounted volume)

*$ docker cp video-file.mp4 rtsp-server:/*

### 5. Copy the required python file into the container

*$ docker cp your-code.py rtsp-server:/*

Link: https://stackoverflow.com/questions/59858898/how-to-convert-a-video-on-disk-to-a-rtsp-stream 

Source code is also provided for convenience in the folder

### 6. Run the python script inside the container after selecting the video

**Note**: To pull the stream from outside the container connect the ports of the container to a port on the host machine when running the container.

*$ docker run -dit --name rtsp-server -p hostport:containerport rtsp-server:0.1*

The stream can be pulled by rtsp://localhost:hostport/stream_name
