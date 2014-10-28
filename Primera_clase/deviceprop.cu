#include <stdio.h>

int main(void){
	cudaDeviceProp prop;
	cudaDeviceProp prop1;

	int count, device;
	cudaGetDeviceCount (&count);

	for (int i=0; i < count; i++){
	cudaGetDeviceProperties(&prop, i);
	printf("Device %d, %s: CC: %d.%d\n", i, prop.name, prop.major, prop.minor);
	}
	memset(&prop1, 0, sizeof(cudaDeviceProp));
	prop1.major = 2;
	prop1.minor = 1;

	device = 1;

	cudaChooseDevice(&device, &prop1);
	cudaSetDevice(device);
	cudaGetDeviceProperties(&prop, device);
	printf("\n Device chosen %d, %s: CC: %d.%d\n", device, prop.name, prop.major, prop.minor);
	return 0;
}
