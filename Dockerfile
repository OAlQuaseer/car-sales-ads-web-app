#
# Building a Docker Image with
# the Latest Ubuntu Version and
# Basic Python Install

# latest Ubuntu version
FROM ubuntu:latest  

# add the bash script
ADD install.sh /install.sh

# make the script executable and run it
RUN chmod +x /install.sh && /install.sh

