build:
	@echo "=========== Updating image ==========="
	@docker rmi teco/fintech:latest || exit 0
	@docker build -t teco/fintech .

run:
	@echo "=========== Starting server ==========="
	@docker run -it --rm \
		-p 8080:8080 \
		-v ${PWD}/app:/app \
		--env-file .env \
		teco/fintech:latest

service: build run
