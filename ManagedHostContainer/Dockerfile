FROM ubuntu:latest
RUN apt-get update && apt-get install -y openssh-server sudo git python3 python3-apt
RUN mkdir /var/run/sshd

# Configure SSH for root login using RSA key
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin without-password/' /etc/ssh/sshd_config
RUN mkdir -p /root/.ssh
COPY managed_container_rsa.pub /root/.ssh/authorized_keys

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]