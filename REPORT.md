1. Makefile Comparison (Part 2 vs Part 3)

Part 2: directly compiled .c files → object files → executable

Part 3: object files from utility .c files are bundled into a static library (.a), then linked to main program.

Key changes:

Added ar command to build library

Modified TARGET rule to link with library instead of individual objects

New LIB_DIR and LIB variables

2. Purpose of ar and ranlib

ar → archive object files into a static library (.a)

ranlib → creates an index for faster linking; ensures linker can find all symbols

3. Symbols in client_static

Running nm bin/client_static shows mystrlen, mystrcpy, etc. are present

This means static linking copies the library code into the executable, unlike dynamic linking which keeps code in a separate .so file
