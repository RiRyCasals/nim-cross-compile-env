FROM --platform=arm64 ubuntu:latest
ENV TZ=Asia/Tokyo
ENV SDK_VERSION=11.3
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    apt update && apt upgrade -y &&\
    apt install -y  gcc clang cmake make automake autogen patch cpio gzip bzip2 vim wget git sed tar pip \
                    python xz-utils uuid-dev llvm-dev lzma-dev libxml2-dev libssl-dev libbz2-dev libtool \
                    gcc-x86-64-linux-gnu mingw-w64 binutils-mingw-w64 gcc-mingw-w64 g++-mingw-w64 &&\
    git clone https://github.com/nim-lang/Nim /Nim &&\
    echo 'export PATH=$PATH:/Nim/bin' >> ~/.bashrc &&\
    cd /Nim &&\
    sh build_all.sh &&\
    git clone https://github.com/tpoechtrager/osxcross.git /osxcross &&\
    wget -P /osxcross/tarballs https://github.com/phracker/MacOSX-SDKs/releases/download/${SDK_VERSION}/MacOSX${SDK_VERSION}.sdk.tar.xz &&\
    cd /osxcross &&\
    echo -e "\n" | ./build.sh &&\
    echo 'export PATH=$PATH:/osxcross/target/bin' >> ~/.bashrc
WORKDIR /work
CMD ["bash"]
