Format: 1.0
Source: docker-ce
Binary: docker-ce, docker-ce-cli, docker-ce-rootless-extras, docker-scan-plugin
Architecture: linux-any
Version: 5:20.10.5~3-0~ubuntu-focal
Maintainer: Docker <support@docker.com>
Homepage: https://www.docker.com
Standards-Version: 3.9.6
Vcs-Browser: https://github.com/docker/docker
Vcs-Git: git://github.com/docker/docker.git
Build-Depends: bash, bash-completion, ca-certificates, cmake, dh-apparmor, debhelper (>= 10~) | dh-systemd, gcc, git, libbtrfs-dev | btrfs-tools, libc-dev, libdevmapper-dev, libltdl-dev, libseccomp-dev, libseccomp2, libsystemd-dev, libtool, make, pkg-config
Package-List:
 docker-ce deb admin optional arch=linux-any
 docker-ce-cli deb admin optional arch=linux-any
 docker-ce-rootless-extras deb admin optional arch=linux-any
 docker-scan-plugin deb admin optional arch=linux-amd64
Checksums-Sha1:
 6d3a680b84438a3daef42fdb488de5fb41e041fe 18741103 docker-ce_20.10.5~3-0~ubuntu-focal.tar.gz
Checksums-Sha256:
 06cb215af36d85b58c1353adffab2599a7fbf25c26b7a14b804acfc1d482acf2 18741103 docker-ce_20.10.5~3-0~ubuntu-focal.tar.gz
Files:
 dc28b8443d805bebac2e2693c68d9e6d 18741103 docker-ce_20.10.5~3-0~ubuntu-focal.tar.gz
