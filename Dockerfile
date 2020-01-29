FROM gittools/gitversion:5.1.4-linux-ubuntu-18.04-netcoreapp3.1

RUN apt update && apt install -y \
    jq \
    git
