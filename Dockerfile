FROM fdupoux/archlinux32:latest

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN date

WORKDIR /tmp
COPY pacman.conf /etc/pacman.conf

RUN pacman-key --init
RUN pacman -Syu --noconfirm base-devel yay



COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"] 
