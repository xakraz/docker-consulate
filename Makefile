default: build

build: Dockerfile
	docker build -t consulate-bin --file=Dockerfile .
