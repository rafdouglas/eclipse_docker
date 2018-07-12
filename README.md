Eclipse dockers for developers
===================
Eclipse Mars (version 4.5) dockers ready to go!

Hi! This is a github repo for the automated Docker building of the following images:

 - Eclipse (mars) base
 - Eclipse for JavaEE 
 - Eclipse for PHP 
 - Eclipse for C/C++ 

These are based on ubuntu 16.04 LTS, so pretty standard after all.

## To get started on your computer

 1. install docker (https://docs.docker.com/engine/installation/)
 2. clone the repo (`git clone git@github.com:rafdouglas/eclipse_docker.git`)
 3. `cd eclipse_docker/Eclipse_for_JavaEE` (or `cd eclipse_docker/Eclipse_for_PHP`, or other package you need)
 4. `sh build`
 5. `sh eclipse_run`

If you wan to customize your environment (for example share a folder between the container and your OS) just edit the options in the "eclipse_run" file


## Plugins are persistent between sessions out of the box 

Eclipse plugins are kept on `$HOME/.eclipse` inside the container, so if you don't want to reinstall them at every instance, you'll need to share it with your host. 
All the provided "eclipse_run" files already include this behavior by means of a shared volume:

    -v $my_homedir/.eclipse-docker:/home/developer

## Build Requests

Feel free to let me know if someone wishes to have additional packages pre-built.
You can see the complete line of packages here: https://eclipse.org/downloads/




----------


*Hat tip to* **Fabio Rehm** (@fgrehm, https://github.com/fgrehm/docker-eclipse) *for his git on version 4.4*, and for some tips. 
I include the following, which is often important:

## Help! I started the container but I don't see the Eclipse screen

You might have an issue with the X11 socket permissions since the default user used by the base image has an user and group ids set to `1000`, in that case you can run either create your own base image with the appropriate ids or run 
`xhost +` 
on your machine and try again.

----------
