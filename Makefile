# These are the commands:

build:
	docker-compose build

shell:
	docker-compose run notebook bash

notebook:
	docker-compose run -p 8888:8888 notebook jupyter lab --ip='0.0.0.0' --port=8888 --no-browser --allow-root --NotebookApp.token=''
