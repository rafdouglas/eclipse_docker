FROM rafdouglas/eclipse_docker_base:xenial

#Hat Tip to fgrehm/docker-eclipse

#to follow rediect ro random mirror you can also use:
#wget --user-agent=Mozilla --content-disposition -E -c 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/R/eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz'

RUN wget http://mirrors.nic.cz/eclipse/technology/epp/downloads/release/mars/R/eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse' && \
    sudo tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

#RUN ls -la /opt/; ls -la /tmp/

#ADD run /opt/eclipse/eclipse

#RUN chmod +x /opt/eclipse/eclipse 

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
#CMD /usr/local/bin/eclipse
CMD /opt/eclipse/eclipse




