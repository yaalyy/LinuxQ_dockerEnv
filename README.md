# LinuxQ_dockerEnv
## Introduction
This repository provides a streamlined solution for creating a Linux-based Docker image tailored for program debugging and reverse engineering. The image comes pre-installed with a suite of essential tools, enabling a ready-to-use environment for analysing, debugging, and cracking programs.  
## Tools
By default, the image already has the basic bash terminal functions such as vim and wget. To debug and crack the executable program, it pre-installes the GDB, objdump for disassembly, and gcc for C compile. To add more tools, modify the Dockerfile to change the section of apt install.
## Usage
- To build the image  
`docker build -t your_image_name`
- To create the container   
`docker run -it your_imaga_name` 
- To disable the network connection of the container   
`docker run -it --network none your_imaga_name`

## Copy your files into the container (optional)
There are two ways to copy files into the container: 
1. Mount the directory of the host machine to the container, or 
2. Copy files while building the image. 
- To mount the local directory   
`docker run -it -v /path/to/local/dir:/test_dir your_image_name`   
This way can sync the file changes in the container with your host machine, not recommended for malware test. 

- To copy the local directory while building the image
copy your files into the directory of *test_dir* **before** the image building, then build the image.   
This way is suitable for the case that file content is not often modified.


