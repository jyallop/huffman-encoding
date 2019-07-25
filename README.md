# huffman-encoding
A huffman encoding written in racket

## Library
The src folder contains the library necessary for the huffman encoding 
The library can be built with:
```bash
make lib
```

## Application
The main.rkt file will run a small server that 
The application can be built and run as long as you have raco installed using the following commands:
```bash
make
./build/main
```
## Cleanup 
You can run ```make remove-lib``` to remove the library (only after installing and ```make clean``` will clear out the build folder
