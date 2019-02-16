#include "fgutils/fileio.h"
#include "fgutils/logs.h"

int main() {
    char *file = fgReadFile("Makefile");
    fgLog("\n%s", file);
    
    return 0;
}