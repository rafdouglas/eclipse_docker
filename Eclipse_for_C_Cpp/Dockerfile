FROM rafdouglas/eclipse_docker:eclipse_base_bionic

LABEL maintainer="RafDouglas"
# Hat Tip to fgrehm/docker-eclipse

LABEL org.label-schema.schema-version = "1.0"
LABEL org.label-schema.version = "Eclipse-photon-cpp"
LABEL org.label-schema.description = "Eclipse C_Cpp docker"

LABEL org.label-schema.url="http://rafdouglas.science"
LABEL org.label-schema.vcs-url = "https://github.com/rafdouglas"
LABEL org.label-schema.docker.cmd = "sh ./eclipse_run.sh"


#to follow rediect ro random mirror you can also use:
#wget --user-agent=Mozilla --content-disposition -E -c 'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/photon/R/eclipse-cpp-photon-R-linux-gtk-x86_64.tar.gz'

RUN wget http://ftp.fau.de/eclipse/technology/epp/downloads/release/photon/R/eclipse-cpp-photon-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    echo 'Installing eclipse C_Cpp' && \
    sudo tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
#CMD /usr/local/bin/eclipse
CMD /opt/eclipse/eclipse




