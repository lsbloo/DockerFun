#!/bin/bash
	
	# create only image of application java
	# need ./mvnw clean package
	 	#-> build sucess
	docker build -t my_image_app image_dir/
	
	# run app java and instance of postgresql
	docker run -e "check envoriment variables" --link myinstacePostgre:instancelocalvariableenvoriment --network=my_network --name name_of_app -p 8080:8080 -d -t my_image_app
