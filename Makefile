IDIR=./includes
EXECUTABLES_DIR=./bin
SOURCE_CODE_DIR=./includes
COMPILER=nvcc
COMPILER_FLAGS=-I$(IDIR) -I/usr/local/cuda/include -lcuda --std c++17 -rdc=true -lcudadevrt

.PHONY: clean build run

build: $(SOURCE_CODE_DIR)/simple.cu
	# mkdir $(EXECUTABLES_DIR)
	$(COMPILER) $(COMPILER_FLAGS) -DNVCC_FAILS_HERE $(SOURCE_CODE_DIR)/simple.cu -o $(EXECUTABLES_DIR)/simple.exe

clean:
	rm -f simple.exe

run:
	$(EXECUTABLES_DIR)/simple.exe

all: clean build run
