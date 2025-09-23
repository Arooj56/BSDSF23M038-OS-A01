Feature 4: Dynamic Library
1. What is Position-Independent Code (-fPIC) and why is it a fundamental requirement for creating shared libraries?

Position-Independent Code (PIC) means that the compiled code does not depend on being loaded at a fixed memory address. Instead, it uses relative addressing, so the operating system’s dynamic loader can place the shared library anywhere in memory at runtime.
This is fundamental for shared libraries because the same .so file can be loaded by multiple programs simultaneously at different memory addresses without conflicts.

2. Explain the difference in file size between your static and dynamic clients. Why does this difference exist?

The static client (client_static) includes a full copy of all library code inside the executable. This makes the executable larger.

The dynamic client (client_dynamic) only stores references to the shared library and depends on it being loaded at runtime. The actual code remains in libmyutils.so. This makes the executable much smaller.

This difference exists because static linking duplicates code in each executable, while dynamic linking reuses a single shared copy in memory.

3. What is the LD_LIBRARY_PATH environment variable? Why was it necessary to set it for your program to run, and what does this tell you about the responsibilities of the operating system's dynamic loader?

LD_LIBRARY_PATH is an environment variable that tells the dynamic loader where to search for shared libraries at runtime.

It was necessary to set it because by default, the loader only searches in system library paths (e.g., /lib, /usr/lib). Since our libmyutils.so is in a custom ./lib directory, we had to explicitly add it.

This shows that the operating system’s dynamic loader is responsible for locating and loading the required shared libraries before the program starts execution.
