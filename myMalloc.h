#ifndef MYMALLOC_H
#define MYMALLOC_H


// each mem block contains:
// - size of current block
// - pointer to next block
// - flag indicating whether current block is free or reserved
typedef struct{
	size_t size;
	struct memBlock *next;
	int free;
}memBlock;


#endif
