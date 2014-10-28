all: install

GOPATH:=$(CURDIR)
export GOPATH

dep:
	go get github.com/douban/goyaml
	go install github.com/douban/goyaml

install:dep
	go install beanseye 

test:
	go test memcache

debug:dep
	go install beanseye
