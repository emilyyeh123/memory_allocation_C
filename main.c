#include <stdio.h>
#include <stddef.h> // used for size_t data type
#include "myMalloc.h"

// create a global array of bytes to act as the heap
char heapMemSpace[10000];
// create a pointer to the array to access the allocated memory
memBlock *memList = (void *)heapMemSpace;

int main(){
	printf("Global Array Address: %p\n", heapMemSpace);
	printf("Pointer to Array: %p\n", memList);
	return 0;
}
