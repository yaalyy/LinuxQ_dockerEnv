# LinuxQ_dockerEnv
## Introduction
Maintaining...
## Usage
- To build the image
`docker build -t your_image_name .`
- To create the container
`docker run -it your_imaga_name`
- To mount the local directory
`docker run -it -v /path/to/local/code:/test_dir your_image_name`
- To copy the local directory
copy your files into the directory of *test_dir*
- To disable the network connection of the container
`docker run -it --network none your_imaga_name`

