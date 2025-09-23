REPORT.md
Part 2: Multi-file Build

Q1. Explain the linking rule in this part's Makefile: $(TARGET): $(OBJECTS). How does it differ from a Makefile rule that links against a library?

This rule means: "to build the target executable, first compile all object files and then link them together."

When linking against a library, instead of providing all .o files, we pass the -l and -L flags to the linker so it searches for compiled functions inside a library file.

Difference: direct linking requires object files, library linking requires precompiled reusable library.

Q2. What is a git tag and why is it useful? Difference between simple and annotated tag?

A git tag is a pointer to a specific commit, usually marking a release version.

Simple tag: lightweight marker, no metadata.

Annotated tag: includes message, author, date, and is stored as a full Git object. More suitable for official releases.

Q3. What is the purpose of creating a "Release" on GitHub? Why attach binaries?

A release is an official packaged version of your project.

Attaching binaries allows users to run the program directly without compiling the source code.

Part 3: Static Library

Q1. Compare Makefile from Part 2 and Part 3. Key differences?

Part 2: linked object files directly into the executable.

Part 3: bundled object files into a static library (libmyutils.a) using ar, then linked that library into the executable.

Variables changed: LIB, LIB_OBJS, and rules for ar.

Q2. Purpose of ar command? Why ranlib?

ar (archiver) creates static library archives from object files.

ranlib indexes the archive so the linker can access symbols faster (on some systems ar rcs already handles this).

Q3. When running nm on client_static, are function symbols (e.g., mystrlen) present? What does this tell you?

No, they are not present in the final executable because the code from the static library was copied directly into the binary.

This shows static linking embeds the library’s code inside the executable.

Part 4: Dynamic Library

Q1. What is Position-Independent Code (-fPIC) and why required?

-fPIC ensures the compiled code can be loaded at any memory address.

This is necessary because shared libraries may be mapped into different locations in different processes.

Q2. Why file size difference between static and dynamic clients?

Static client (client_static) contains the full code of all linked functions, making it larger.

Dynamic client (client_dynamic) only contains references to the shared library, so it is smaller.

Q3. What is LD_LIBRARY_PATH? Why necessary?

Environment variable telling the OS dynamic loader where to search for .so libraries.

Without it, the system does not know where to find libmyutils.so.

It shows that the loader is responsible for finding and loading shared libraries at runtime.

Part 5: Man Pages

Q1. What sections must a man page contain?

.TH → Title Header

.SH NAME → Function/program name + one-line description

.SH SYNOPSIS → How to use the function/program

.SH DESCRIPTION → Detailed explanation

.SH AUTHOR → Author name and email

Q2. Why add an install target in Makefile?

To simulate a real installation process where executables and documentation are copied into system directories.

Makes the project feel professional and usable system-wide.

Q3. Why gzip man pages?

System man directories expect compressed files for efficiency (mycat.3.gz).

Ensures the man command recognizes and loads them properly.

Final Part: Wrap-up

This project guided me through:

Writing multi-file C programs

Building and linking static and dynamic libraries

Using make for automation

Creating Git branches, tags, and releases

Writing and installing man pages
