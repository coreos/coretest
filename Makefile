all: coretest

coretest: *.go
	GOPATH="${PWD}/third_party" go test -i -c
	mv coretest.test coretest
