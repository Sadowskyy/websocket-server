build:
	docker build -t websocket-server .
	docker run -d --name WS-server -p 8080:8080 -p 80:80 websocket-server
run:
	docker run -d --name WS-server -p 8080:8080 -p 80:80 websocket-server
destroy:
	docker rm WS-server
stop:
	docker stop WS-server
	
