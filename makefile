all: clean
	mkdir -p build
	raco exe -o build/main main.rkt

lib:
	raco pkg install ./huffman

remove-lib:
	raco pkg remove huffman

clean:
	rm -rf build/*
