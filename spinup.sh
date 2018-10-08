#!/bin/bash

while [ ! $# -eq 0 ]
do
  case "$1" in
    --help | -h)
      printf "USAGE: ./spinup.sh [OPTION]... \n"
      printf "Tears down existing ELI infrastructure: Containers, Images, Network \n"
      printf "Then builds ELI back up from scratch. \n\n"
      printf "Optional arguments: \n"
      printf "  -d, --dev         Tears down and rebuilds, but preserves the database\n"
      printf "                        volume and bind mounts ./lucee/code/ to /var/www/\n"
      printf "                        to allow for live code updates.\n"
      printf "  -h, --help        Print documentation to screen and exit. \n"
      printf "  -p, --prod        Tears down and rebuilds, including the database volume\n"
      printf "                        and doesn't allow live code updates.\n"
      printf "  -t, --toshreds    Tears everything down without doing a rebuild.\n"      
      exit 1
      ;;
    --dev | -d)
      # ---Spin down old stuff---
      # If lucee container is running, turn it off.
      running_lucee_instance=`docker ps | grep eli-lucee | wc -l`
      if [ $running_lucee_instance -gt "0" ]
      then
        echo "Current instance of eli-lucee running."
        echo "Spinning down now."
        docker kill eli-lucee
        echo "Spinning down complete."
        echo "-----------------------"
      fi

      # If mysql container is running, turn it off.
      running_mysql_instance=`docker ps | grep eli-db | wc -l`
      if [ $running_mysql_instance -gt "0" ]
      then
        echo "Current instance of eli-db running."
        echo "Spinning down now."
        docker kill eli-db
        echo "Spinning down complete."
        echo "-----------------------"
      fi

      # If turned off lucee container exists, remove it.
      existing_lucee_container=`docker ps -a| grep eli-lucee | grep Exit | wc -l`
      if [ $existing_lucee_container -gt "0" ]
      then
        echo "Container eli-lucee image exists."
        echo "Removing container now."
        docker rm eli-lucee
        echo "Removing container complete."
        echo "-----------------------"
      fi

      # If turned off mysql container exists, remove it.
      existing_mysql_container=`docker ps -a| grep eli-db | grep Exit | wc -l`
      if [ $existing_mysql_container -gt "0" ]
      then
        echo "Container eli-db image exists."
        echo "Removing container now."
        docker rm eli-db
        echo "Removing container complete."
        echo "-----------------------"
      fi

      # If image for locallucee exists, remove it.
      existing_locallucee_image=`docker images | grep elivue_lucee-eli | wc -l`
      if [ $existing_locallucee_image -gt "0" ]
      then
        echo "Image elivue_lucee-eli exists."
        echo "Removing image now."
        docker rmi elivue_lucee-eli
        echo "Removing image complete."
        echo "-----------------------"
      fi

      # If image for localdb exists, remove it.
      existing_localdb_image=`docker images | grep elivue_db-eli | wc -l`
      if [ $existing_localdb_image -gt "0" ]
      then
        echo "Image elivue_db-eli exists."
        echo "Removing image now."
        docker rmi elivue_db-eli
        echo "Removing image complete."
        echo "-----------------------"
      fi

      # ---Spin up new stuff---

      # Rebuild images localdb and lucee
      echo "Building images elivue_lucee-eli and elivue_db-eli."
      docker-compose build --no-cache
      echo "-----------------------"

      # Create eli-net bridge network for containers to communicate
      echo "Creating eli-net- bridge network"
      docker network create --driver bridge eli-net
      echo "-----------------------"

      # Spin up eli-lucee container
      echo "Spinning up eli-lucee container"
      docker run -d -p 127.0.0.1:7777:8888 --restart always --name eli-lucee --mount type=bind,source=$(pwd)/lucee/code,target=/var/www --network eli-net devc_webpack_playground_lucee-eli:latest
      echo "-----------------------"

      # Spin up eli-mysql-db container
      echo "Spinning up eli-mysql-db container"
      docker run -d -p 127.0.0.1:3305:3306 --restart always --name eli-db -v eli_dbdata:/var/lib/mysql --network eli-net devc_webpack_playground_db-eli:latest
      echo "-----------------------"

      exit 1
      ;;
    --toshreds | -t)
      # ---Spin down old stuff---
      # If lucee container is running, turn it off.
      running_lucee_instance=`docker ps | grep eli-lucee | wc -l`
      if [ $running_lucee_instance -gt "0" ]
      then
        echo "Current instance of eli-lucee running."
        echo "Spinning down now."
        docker kill eli-lucee
        echo "Spinning down complete."
        echo "-----------------------"
      fi

      # If mysql container is running, turn it off.
      running_mysql_instance=`docker ps | grep eli-db | wc -l`
      if [ $running_mysql_instance -gt "0" ]
      then
        echo "Current instance of eli-db running."
        echo "Spinning down now."
        docker kill eli-db
        echo "Spinning down complete."
        echo "-----------------------"
      fi

      # If turned off lucee container exists, remove it.
      existing_lucee_container=`docker ps -a| grep eli-lucee | grep Exit | wc -l`
      if [ $existing_lucee_container -gt "0" ]
      then
        echo "Container eli-lucee image exists."
        echo "Removing container now."
        docker rm eli-lucee
        echo "Removing container complete."
        echo "-----------------------"
      fi

      # If turned off mysql container exists, remove it.
      existing_mysql_container=`docker ps -a| grep eli-db | grep Exit | wc -l`
      if [ $existing_mysql_container -gt "0" ]
      then
        echo "Container eli-db image exists."
        echo "Removing container now."
        docker rm eli-db
        echo "Removing container complete."
        echo "-----------------------"
      fi

      # If image for locallucee exists, remove it.
      existing_locallucee_image=`docker images | grep elivue_lucee-eli | wc -l`
      if [ $existing_locallucee_image -gt "0" ]
      then
        echo "Image elivue_lucee-eli exists."
        echo "Removing image now."
        docker rmi elivue_lucee-eli
        echo "Removing image complete."
        echo "-----------------------"
      fi

      # If image for localdb exists, remove it.
      existing_localdb_image=`docker images | grep elivue_db-eli | wc -l`
      if [ $existing_localdb_image -gt "0" ]
      then
        echo "Image elivue_db-eli exists."
        echo "Removing image now."
        docker rmi elivue_db-eli
        echo "Removing image complete."
        echo "-----------------------"
      fi

      # If dbdata volume exists, remove it.
      existing_dbdata_volume=`docker volume ls | grep eli_dbdata | wc -l`
      if [ $existing_dbdata_volume -gt "0" ]
      then
        echo "Volume eli_dbdata exists."
        echo "Removing volume now."
        docker volume rm eli_dbdata
        echo "Removing volume complete."
        echo "-----------------------"
      fi

      # If eli-net network exists, remove it.
      existing_elinet_network=`docker network ls | grep eli-net | wc -l`
      if [ $existing_elinet_network -gt "0" ]
      then
        echo "Network eli-net exists."
        echo "Removing network now."
        docker network rm eli-net
        echo "Removing network complete."
        echo "-----------------------"
      fi

      exit 1
      ;;
  esac 
  shift
done

printf "USAGE: ./spinup.sh [OPTION]... \n"
printf "Tears down existing ELI infrastructure: Containers, Images, Network \n"
printf "Then builds ELI back up from scratch. \n\n"
printf "Optional arguments: \n"
printf "  -d, --dev         Tears down and rebuilds, but preserves the database\n"
printf "                        volume and bind mounts ./lucee/code/ to /var/www/\n"
printf "                        to allow for live code updates.\n"
printf "  -h, --help        Print documentation to screen and exit. \n"
printf "  -p, --prod        Tears down and rebuilds, including the database volume\n"
printf "                        and doesn't allow live code updates.\n"
printf "  -t, --toshreds    Tears everything down without doing a rebuild.\n"      
exit 1