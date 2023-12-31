BINARY=engine
test:
	go test -v -cover -covermode=atomic ./...

engine:
	go build -o ${BINARY} app/*.go


unittest:
	go test -short  ./...

clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi

docker:
	docker build -t streamlize .

stop:
	docker-compose down
run: stop
	docker-compose up --build -d
up: stop
	docker-compose up -d

serve:
	swag init -g app/main.go
	go run app/main.go

tidy:
	go mod tidy

lint-prepare:
	@echo "Installing golangci-lint"
	curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s latest

lint:
	./bin/golangci-lint run ./...

.PHONY: clean install unittest build docker run stop vendor lint-prepare lint
