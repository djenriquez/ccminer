# ccminer
Dockerized tpruvot/ccminer

# Summary
Dockerizes the ccminer binary. Run the docker container as if it were the actual binary, simply pass in flags.

# Run
```
$: docker run --rm -t \
--runtime=nvidia \
djenriquez/ccminer
*** ccminer 2.2.5 for nVidia GPUs by tpruvot@github ***
    Built with the nVidia CUDA Toolkit 9.1 64-bits

  Originally based on Christian Buchner and Christian H. project
  Include some kernels from alexis78, djm34, djEzo, tsiv and krnlx.

BTC donation address: 1AJdfCpLWPNoAMDfHF1wD5y8VgKSSTHxPo (tpruvot)

Usage: ccminer [OPTIONS]
Options:
  -a, --algo=ALGO       specify the hash algorithm to use
			bastion     Hefty bastion
.
.
.
  -V, --version         display version information and exit
  -h, --help            display this help text and exit
$: 

```

## Example
```
docker run -d \
--name ccminer \
--restart always \
--runtime=nvidia \
djenriquez/ccminer \
-o stratum+tcp://neoscrypt.usa.nicehash.com:3341 -u 33DyXVuy3R5jfLZRRpEQcXXAJ1Xz5rkGxE -p x -a neoscrypt
```
# Dependencies
- nvidia GPUs
- CUDA drivers for your machine, see https://developer.nvidia.com/cuda-downloads?target_os=Linux
- [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)