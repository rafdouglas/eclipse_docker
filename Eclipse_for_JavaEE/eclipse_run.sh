#xhost +
my_homedir=${HOME}

echo "my_homedir:$my_homedir"

docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $my_homedir:/workspace \
	-v $my_homedir/.eclipse-docker:/home/developer \
	-v $my_homedir/localSVN:/home/developer/localSVN \
	rafdouglas/eclipse_docker:Eclipse_for_JavaEE

#	-v /usr/local/share/perl/5.20.2/:/usr/local/share/perl/5.20.2/ \
#	-v $HOME/.Xauthority:/home/developer/.Xauthority \
#	--net=host \


