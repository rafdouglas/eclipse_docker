#docker run -it \
#    --env="DISPLAY" \
#    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#    osrf/ros:indigo-desktop-full \
#    rqt
#export containerId='docker ps -l -q'

#xhost +
#my_homedir=$(~)
my_homedir=${HOME}

echo "my_homedir:$my_homedir"

docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $my_homedir:/workspace \
	-v $my_homedir/.eclipse-docker:/home/developer \
	-v /home/rafd/localSVN:/home/developer/localSVN \
	-v /usr/local/share/perl/5.20.2/:/usr/local/share/perl/5.20.2/ \
	rafdouglas/mars_base

#	-v $HOME/.Xauthority:/home/developer/.Xauthority \
#	--net=host \

#	-v `pwd`:/workspace \
#	-v `pwd`/.eclipse-docker:/home/developer \

