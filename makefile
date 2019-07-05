all: lib
	mkdir -p build
	raco exe -o build/main main.rkt

lib:
	echo "needs to be setup"
