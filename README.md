# CS287 Lua docker image companion

Those who tried to do exercises on Windows or MacOS, could have had some problems with properly install Lua and HDF5 libraries.
This Docker image is supposed to provide you a quick start solution for this problem.

## Usage

Build the image first:

```
docker build -t cs287-lua .
```

```
docker run --rm -it -w /var/cs287 -v /c/users/hwx:/var/cs287/ cs287-lua
```
