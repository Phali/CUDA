#include <stdio.h>

__global__ void kernel( void ){
}


int main(void) {
	int count;
	cudaGetDeviceCount(&count);

	printf( "%d\n",count );
	return 0;
}
