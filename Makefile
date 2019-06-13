all: build push
test: build pushtest

build:
	docker build -t demilletech/alpine-aws-sdk-npm:local . 

push:
	docker tag demilletech/alpine-aws-sdk-npm:local demilletech/alpine-aws-sdk-npm:latest
	docker push demilletech/alpine-aws-sdk-npm:latest

pushtest:
	docker tag demilletech/alpine-aws-sdk-npm:local demilletech/alpine-aws-sdk-npm:test
	docker push demilletech/alpine-aws-sdk-npm:latest
