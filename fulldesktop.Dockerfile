FROM gitpod/workspace-full
ENV DEBIAN_FRONTEND=noninteractive
USER root
RUN apt update \
&& apt -yq install xpra dbus-x11 xfce4 xfce4-terminal xfce4-goodies \
&& cd /tmp \
&& add-apt-repository ppa:saiarcot895/chromium-beta \
&& apt update \
&& apt -yq install chromium-browser \
&& wget -O code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" \
&& apt -yq install ./code.deb \
&& echo gitpod:gitpod | chpasswd
USER gitpod