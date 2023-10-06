# simple-cuda-project
Runtime API and Driver API examples

Driver API example code based on code found at https://gist.github.com/tautologico/2879581

# FATBIN part
1. Ensure that you are in the driver_api folder

2. nvcc -o matSumKernel.fatbin -fatbin matSumKernel.cu -lcuda
3. nvcc -o drivertest.o -c drivertest.cpp -lcuda
4. nvcc -o drivertest drivertest.o -lcuda
5. ./drivertest > output-fatbin.txt

# PTX part

1. nvcc -o matSumKernel.ptx -ptx matSumKernel.cu -lcuda
2. nvcc -o drivertest.o -c drivertest.cpp -lcuda
3. nvcc -o drivertest drivertest.o -lcuda
4. ./drivertest > output-ptx.txt

Runtime API example code based on code found at https://gist.github.com/al-indigo/4dd93d48a2886db6b1ac

#Runtime assignment part

1. Ensure that you are in the runtime_api folder
2. nvcc -o vector_add vector_add.cu
3. ./vector_add > output-runtime.txt
