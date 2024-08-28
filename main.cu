#include<cstdio>
#include<cstdlib>

__global__ void print_from_gpu() {
    printf("Hello World! from thread [%d,%d] From device\n", threadIdx.x,blockIdx.x);
}

int main() {
    printf("Hello World from host!\n");
    print_from_gpu<<<1, 1>>>();
    cudaDeviceSynchronize();

    return EXIT_SUCCESS;
}
