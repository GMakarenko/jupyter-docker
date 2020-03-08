# These are the commands:

shell:
	docker-compose run notebook bash

notebook:
	docker-compose run -p 7777:7777 notebook jupyter lab --ip='0.0.0.0' --port=8888 --no-browser --allow-root --NotebookApp.token=''
