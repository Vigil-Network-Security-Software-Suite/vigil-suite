# vigil-suite
Vigil Network Security Software Suite

## Introduction
The VNS<sup>3</sup> is a collection of tools designed to help keep your organization safe from various threats. It includes the following tools:
- The Vigil IDS(located in /vigil)
- NLog(Network Logger) located in /nlog
- Vigil PCAP Analysis Tool(/tpcap) which is cross platform and can be run independantly of the other tools
- Vigil Remote Monitoring and Configuration Server(/vrmc)
- VLConsole(/vlconsole)
- IPC Router(Used for sending data in between all of these programs)



## System Requirements
- At least one interface that is not loopback
- Large hard drive space if the logs are not outsourced
- A decent CPU(2GHz+) with as many cores as you can reasonably add
- A decent amount of RAM(4GB+)

## Software Requirements
### Libraries
- libsqlite3-dev
- liblua5.3-dev
- libcurl-dev
- libncurses-dev
### Software Tools
- GCC/Make
- Python3+
- Lua5.3+

