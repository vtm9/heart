pg:
	docker-compose up -d db

server:
	iex -S mix phx.server
