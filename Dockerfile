FROM centos:8
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

RUN yum -y install wget
RUN printf "\n[Open-Power]\nname=Unicamp OpenPower Lab - $basearch\nbaseurl=https://oplab9.parqtec.unicamp.br/pub/repository/rpm/\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://oplab9.parqtec.unicamp.br/pub/key/openpower-gpgkey-public.asc" >> /etc/yum.repos.d/open-power.repo
RUN yum -y update
RUN yum -y install glide
RUN glide --version