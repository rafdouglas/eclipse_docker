#/bin/bash
# RafDouglas - 2018
# Automatic Docker contest generator for the various Eclipse flavours (JavaEE, PHP, CPP, etc)

TMPL_DIR='template'
BASE_NAME='Eclipse_for_'
BASE_DIR='../'

dupliclone(){

  #first arg is a human readable tag
  #second arg must match the archive name on the mirror:
  #http://ftp.fau.de/eclipse/technology/epp/downloads/release/photon/R/

  if [ -z $2 ]; then
    echo "Exiting due to missing args"
    exit
  fi


  FLAVOUR_NAME=$1
  FLAVOUR_ID=$2
  NEW_DIR=$BASE_DIR$BASE_NAME$FLAVOUR_NAME

  echo "cloning template into $NEW_DIR"

  rm -rf $NEW_DIR
  yes|cp -rf $TMPL_DIR $NEW_DIR

  sed -i "s/FLAVOUR_NAME/$FLAVOUR_NAME/g" $NEW_DIR/*
  sed -i "s/FLAVOUR_ID/$FLAVOUR_ID/g" $NEW_DIR/*

}


dupliclone JavaEE     jee
dupliclone Javascript javascript
dupliclone C_Cpp      cpp
dupliclone PHP        php
dupliclone Modeling   modeling
