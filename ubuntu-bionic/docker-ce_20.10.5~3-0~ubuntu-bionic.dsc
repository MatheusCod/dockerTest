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
 1e7842b9ef14f19695fca3d88e687b7d35e1cd0c 18741864 docker-ce_20.10.5~3-0~ubuntu-bionic.tar.gz
Checksums-Sha256:
 793a88d69ccb783fe492d9f4f148f642b8605cc275ba1375537e5ae549c5893f 18741864 docker-ce_20.10.5~3-0~ubuntu-bionic.tar.gz
Files:
 63938e8193efe0aeb4c72b68aa4bf1cf 18741864 docker-ce_20.10.5~3-0~ubuntu-bionic.tar.gz
