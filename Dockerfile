FROM        debian:8.5
ENV         LANG C.UTF-8
RUN         apt-get update -qq && \
            apt-get install -y patch lua5.2 liblua5.2-dev wget make unzip g++ gcc-4.9-plugin-dev libhdf5-dev git && \
            mkdir -p /var/cs287 && \
            wget http://luajit.org/download/LuaJIT-2.0.4.tar.gz -P /tmp && \
            cd /tmp && tar zxpf LuaJIT-2.0.4.tar.gz && \
            cd /tmp/LuaJIT-2.0.4 && make && make install && \
            git clone http://git.colberg.org/lua-hdf5 /tmp/lua-hdf5 && cd /tmp/lua-hdf5 && \
            export CPATH=/usr/include/hdf5/serial && \
            export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/hdf5/serial && \
            export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/hdf5/serial && \
            make && make install && \
            rm -rf /tmp/*
VOLUME      /var/cs287
ENTRYPOINT  ["/bin/bash"]
