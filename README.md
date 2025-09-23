# BSDSF23M038-OS-A01

# 📌 Multi-File C Project   

## 📖 Overview  
This project demonstrates how to structure, build, and document a C application professionally.  
It covers:  
- Multi-file builds with **Makefiles**  
- Creating and linking **static libraries (.a)**  
- Creating and linking **dynamic libraries (.so)**  
- Writing and installing **man pages**  
- Using **Git branching, tagging, and GitHub releases**  

The final program provides string and file utility functions (e.g., `mystrlen`, `mycat`) and is packaged for installation with documentation.  

---

## 📂 Project Structure  

├── include/ # Header files (.h)
│ ├── mystrfunctions.h
│ ├── myfilefunctions.h
│
├── src/ # Source files (.c)
│ ├── main.c
│ ├── mystrfunctions.c
│ ├── myfilefunctions.c
│
├── obj/ # Compiled object files (.o)
├── bin/ # Compiled executables (client, client_static, client_dynamic)
├── lib/ # Libraries (libmyutils.a, libmyutils.so)
│
├── man/ # Documentation
│ └── man3/ # Man pages
│ └── mycat.1
│
├── Makefile # Build automation
├── REPORT.md # Detailed report (answers to assignment questions)
└── README.md # Project overview

---

## ⚙️ Features Implemented  

### ✅ Feature 2 – Multi-file Build  
- Compile multiple `.c` files into object files.  
- Link them into a single executable (`bin/client`).  

### ✅ Feature 3 – Static Library  
- Build static library `lib/libmyutils.a` with `ar`.  
- Link into executable `bin/client_static`.  

### ✅ Feature 4 – Dynamic Library  
- Build dynamic library `lib/libmyutils.so` with `-fPIC -shared`.  
- Link into executable `bin/client_dynamic`.  
- Run with `LD_LIBRARY_PATH=lib ./bin/client_dynamic`.  

### ✅ Feature 5 – Man Pages & Installation  
- Man page for `mycat` utility in `man/man3/mycat.1`.  
- Install target in Makefile: copies binary + man page into system directories.  
- View man page:  
  ```bash
  man mycat
🚀 Build & Run Instructions
1️⃣ Clone Repository
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
2️⃣ Build the Project
Build default client:
make
Build static version:
make client_static
Build dynamic version:
make client_dynamic
3️⃣ Run Executables
./bin/client
./bin/client_static
LD_LIBRARY_PATH=lib ./bin/client_dynamic
4️⃣ Install (requires sudo)
sudo make install
Now you can run mycat and view its man page anywhere:
mycat filename.txt
man mycat
📦 Git Workflow Used
Created feature branches: multifile-build, static-build, dynamic-build, manpages

Merged into main step by step

Tagged releases:

v0.1.1-multifile

v0.2.1-static

v0.3.1-dynamic

v0.4.1-final

Published GitHub releases with binaries and documentation.

👩‍💻 Author
Arooj Fatima
BS Data Science – PUCIT Lahore
