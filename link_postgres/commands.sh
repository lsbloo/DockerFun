#!/bin/bash

	#- pull image postgres
	docker pull postgres
	# - pull image pgadmin4
	docker pull dpage/pgadmin4
	# check images
	docker images postgres
	# create network execute container
	docker network create name_network
	# list networks
	docker network ls
	# create only instance for execute postgresql
	docker run --name postgres_database --network=my_network -e "POSTGRES_PASSWORD=password" -e 5432:5432 -v /home/osvaldoairon/myVolumePostgres:/var/lib/postgresql/data -d postgres
	#check container
	docker ps ; docker ps -a
	# create container execute pgadmin 4
	docker run --name pgadmin4_pg --network=my_network -p 16354:80 -e "PGADMIN_DEFAULT_EMAIL=myemail@gmail.com.br" -e "PGADMIN_DEFAULT_PASSWORD=pgadmin4" -d dpage/pgadmin4
	# check 
	docker ps
	# in hostname pgadmin4 need information name of container respective
	# instanec of Postgresql
	
