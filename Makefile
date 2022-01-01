SHELL=bash

generate:
	protoc --proto_path=./ --go_out="plugins=grpc:./" ./*.proto
	cp -f github.com/softia-inc/**/* ./
	rm -rf github.com