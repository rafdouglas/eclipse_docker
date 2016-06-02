my_homedir=${HOME}

echo "my_homedir:$my_homedir"

docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $my_homedir:/workspace \
	-v $my_homedir/.eclipse-docker:/home/developer \
	rafdouglas/eclipse_docker:Eclipse_base

#	-v $HOME/.Xauthority:/home/developer/.Xauthority \
#	--net=host \
