1. Linking Rule in Makefile
$(TARGET): $(OBJECTS)


This rule tells make to link all object files (.o) listed in $(OBJECTS) into the final executable $(TARGET).

The Makefile first compiles individual .c files into .o files, then this rule combines them.

Difference from linking against a library:

When linking against a library, you don’t list all object files manually. Instead, you link using a library flag, e.g., -lmylib or libmylib.a.

Libraries allow reusable, precompiled code, whereas here you link raw object files.

2. Git Tag

A Git tag is a reference to a specific commit, usually marking a release or stable version.

Why useful:

Easily identify important milestones.

Roll back or deploy a specific version quickly.

Simple tag vs Annotated tag:

Simple tag: lightweight pointer to a commit, no extra info.

Annotated tag: stores author, date, and a message — recommended for official releases.

3. GitHub Release

A Release on GitHub is a formal way to distribute a specific version of your project.

Purpose:

Share a stable snapshot with others.

Track version history visually.

Significance of attaching binaries:

Users can download and run the program without compiling.

Useful for executables, libraries, or other deliverables that need to be ready-to-use.
