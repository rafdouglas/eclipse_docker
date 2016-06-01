FROM rafdouglas/eclipse_docker:Eclipse_base

RUN wget http://mirrors.nic.cz/eclipse/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse' && \
    tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

RUN ls -la /opt/; ls -la /tmp/

#ADD run /opt/eclipse/eclipse

RUN chmod +x /opt/eclipse/eclipse 

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
#CMD /usr/local/bin/eclipse
CMD /opt/eclipse/eclipse




