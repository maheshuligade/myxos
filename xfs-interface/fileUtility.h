#ifndef FILEUTILS_H
#define FILEUTILS_H
#include <stdio.h>
#include <string.h>
#include<fcntl.h>
#include "fileSystem.h"

void emptyBlock(int blockNo);
int getValue(char* str);
void storeValue(char* str, int num);
int readFromDisk(int virtBlockNumber, int fileBlockNumber);
int writeToDisk(int virtBlockNumber, int fileBlockNumber);
int loadFileToVirtualDisk();
void clearVirtDisk();
#endif
