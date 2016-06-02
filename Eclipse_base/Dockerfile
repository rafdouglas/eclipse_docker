FROM ubuntu:15.10

#docker run -it \
#    --env="DISPLAY" \
#    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#    osrf/ros:indigo-desktop-full \
#    rqt
#export containerId='docker ps -l -q'

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
#&& \
#    rm -rf /tmp/*

# Install libgtk as a separate step so that we can share the layer above with
# the netbeans image
RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module sudo

RUN mkdir -p /opt/eclipse/eclipse
RUN chmod +x /opt/eclipse/eclipse

RUN mkdir -p /home/developer && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    mkdir -p /etc/sudoers.d/ && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    mkdir -p /home/developer/.eclipse && \
    mkdir -p /home/developer/test && \
    chown developer:developer -R /home/developer && \
    chmod 777 -R /home/developer && \
    chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo

#RUN wget http://mirrors.nic.cz/eclipse/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
#    echo 'Installing eclipse' && \
#    tar -xf /tmp/eclipse.tar.gz -C /opt 
#&& \
#    rm /tmp/eclipse.tar.gz

#RUN ls -la /opt/; ls -la /tmp/

#ADD run /opt/eclipse/eclipse

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
#CMD /usr/local/bin/eclipse
#CMD /opt/eclipse/eclipse




