Format: 1.0
Source: docker-ce
Binary: docker-ce, docker-ce-cli, docker-ce-rootless-extras, docker-scan-plugin
Architecture: linux-any
Version: 5:20.10.5~3-0~ubuntu-bionic
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
 3b4976c326db5faac421dfbbf4f8d210fb1253f8 18741862 docker-ce_20.10.5~3-0~ubuntu-bionic.tar.gz
Checksums-Sha256:
 2001d5f9ddad6893cc5c092464d425eec9604dcac00d65107b71ea98f0680c11 18741862 docker-ce_20.10.5~3-0~ubuntu-bionic.tar.gz
Files:
 eb1c348b124f0f61ac512bc875dcaa12 18741862 docker-ce_20.10.5~3-0~ubuntu-bionic.tar.gz
