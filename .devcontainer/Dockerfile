# https://github.com/devcontainers/images/blob/main/src/base-ubuntu/.devcontainer/Dockerfile

ARG VARIANT="noble"
FROM buildpack-deps:${VARIANT}-curl
LABEL dev.containers.features="common"

ARG USERNAME=ubuntu

RUN apt-get update \
    && apt-get install -y sudo xz-utils git\
    && apt-get clean\
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

RUN curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf - -C /usr/local/share \
    && echo 'source /usr/local/share/ble-nightly/ble.sh' >> /home/$USERNAME/.bashrc  
    # && echo 'source /usr/local/share/ble-nightly/ble.sh' >> ~/.bashrc 

    
RUN curl -L https://github.com/lemonade-command/lemonade/releases/download/v1.1.1/lemonade_linux_amd64.tar.gz | tar xzf - -C /usr/local/bin \
    && echo "alias clip='lemonade --port=42489 copy'" >> /home/$USERNAME/.bashrc  
    
RUN curl -L https://github.com/eza-community/eza/releases/download/v0.20.24/eza_x86_64-unknown-linux-gnu.tar.gz| tar xzf - -C /usr/local/bin \
    && echo "alias la='eza -lahF --color --time-style=long-iso --group-directories-first'" >> /home/$USERNAME/.bashrc  

RUN curl -L https://github.com/gitui-org/gitui/releases/download/v0.27.0/gitui-linux-x86_64.tar.gz | tar xzf - -C /usr/local/bin 

RUN curl -o package.deb  -L https://github.com/dandavison/delta/releases/download/0.18.2/git-delta_0.18.2_amd64.deb && dpkg -i package.deb && rm package.deb

RUN curl -o package.deb  -L https://github.com/sharkdp/bat/releases/download/v0.25.0/bat_0.25.0_amd64.deb &&  dpkg -i package.deb && rm package.deb

