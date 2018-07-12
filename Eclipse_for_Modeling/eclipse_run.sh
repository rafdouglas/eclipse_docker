#xhost +
my_homedir=${HOME}

echo "my_homedir:$my_homedir"
mkdir -p $my_homedir/.eclipse-docker-photon

docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $my_homedir:/home/developer/ \
	-v $my_homedir/.eclipse-docker-photon:/home/developer \
	rafdouglas/eclipse_docker:eclipse_photon_Modeling

#	-v /usr/local/share/perl/5.20/:/usr/local/share/perl/5.20/ \
#	-v /usr/lib/x86_64-linux-gnu/perl/:/usr/lib/x86_64-linux-gnu/perl/ \

#	-v $HOME/.Xauthority:/home/developer/.Xauthority \
#	--net=host \


