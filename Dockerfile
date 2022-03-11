FROM --platform=arm64 ubuntu:latest
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    apt update && apt upgrade -y &&\
    apt install -y gcc clang cmake make llvm-dev uuid-dev libssl-dev libbz2-dev wget git vim
RUN git clone https://github.com/nim-lang/Nim /Nim &&\
    echo 'export PATH="$HOME/Nim/bin:$PATH"' >> ~/.bashrc &&\
    cd /Nim &&\
    sh build_all.sh &&\
    cd /
WORKDIR /work
CMD ["bash"]
