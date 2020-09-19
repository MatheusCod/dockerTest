#!/bin/bash

CONTAINERD="containerd"
CONTAINERD_CRI="containerd-cri"
CONTAINERD_CRI_CNI="containerd-cri-cni"
BAZEL="bazel"
DOCKER_CE="docker-ce"
DOCKER_CE_CLI="docker-ce-cli"
GLIDE="glide"
GRAFANA_CLI="grafana-cli"
KIALI="kiali"
MINIKUBE="minikube"
MINIO="minio"
MINIO_MC="minio-mc"
RESTIC="restic"
TERRAFORM="terraform"
RCLONE="rclone"
MATCHBOX="matchbox"

cd $TRAVIS_BUILD_DIR

mkdir $CONTAINERD
mkdir $CONTAINERD_CRI
mkdir $CONTAINERD_CRI_CNI
mkdir $BAZEL
mkdir $DOCKER_CE
mkdir $DOCKER_CE_CLI
mkdir $GLIDE
mkdir $GRAFANA_CLI
mkdir $KIALI
mkdir $MINIKUBE
mkdir $MINIO
mkdir $MINIO_MC
mkdir $RESTIC
mkdir $TERRAFORM
mkdir $RCLONE
mkdir $MATCHBOX

cp Dockerfile $CONTAINERD
cp Dockerfile $CONTAINERD_CRI
cp Dockerfile $CONTAINERD_CRI_CNI
cp Dockerfile $BAZEL
cp Dockerfile $DOCKER_CE
cp Dockerfile $DOCKER_CE_CLI
cp Dockerfile $GLIDE
cp Dockerfile $GRAFANA_CLI
cp Dockerfile $KIALI
cp Dockerfile $MINIKUBE
cp Dockerfile $MINIO
cp Dockerfile $MINIO_MC
cp Dockerfile $RESTIC
cp Dockerfile $TERRAFORM
cp Dockerfile $RCLONE
cp Dockerfile $MATCHBOX

cd $MINIKUBE
printf "\nRUN yum -y install $MINIKUBE\nRUN $MINIKUBE version" >> Dockerfile
{
  docker build -t $MINIKUBE-test -f $TRAVIS_BUILD_DIR/$MINIKUBE/Dockerfile .
} || {
  printf "Error in docker build: $MINIKUBE\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $MINIKUBE-test
} || {
  printf "Error in \"docker run\": $MINIKUBE\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

if [ "$(cat log_error)" != "" ]
then
  echo "Unsuccessful tests:"
  cat log_error
  exit 1
fi

cd $CONTAINERD
printf "\nRUN yum -y install $CONTAINERD\nRUN $CONTAINERD --version" >> Dockerfile
{
  docker build -t $CONTAINERD-test -f $TRAVIS_BUILD_DIR/$CONTAINERD/Dockerfile .
} || {
  printf "Error in \"docker build\": $CONTAINERD\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $CONTAINERD-test
} || {
  printf "Error in \"docker run\": $CONTAINERD\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $CONTAINERD_CRI
printf "\nRUN yum -y install $CONTAINERD_CRI\nRUN $CONTAINERD --version" >> Dockerfile
{
  docker build -t $CONTAINERD_CRI-test -f $TRAVIS_BUILD_DIR/$CONTAINERD_CRI/Dockerfile .
} || {
  printf "Error in \"docker build\": $CONTAINERD_CRI\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $CONTAINERD_CRI-test
} || {
  printf "Error in \"docker run\": $CONTAINERD_CRI\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $CONTAINERD_CRI_CNI
printf "\nRUN yum -y install $CONTAINERD_CRI_CNI\nRUN $CONTAINERD --version" >> Dockerfile
{
  docker build -t $CONTAINERD_CRI_CNI-test -f $TRAVIS_BUILD_DIR/$CONTAINERD_CRI_CNI/Dockerfile .
} || {
  printf "Error in \"docker build\": $CONTAINERD_CRI_CNI\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $CONTAINERD_CRI_CNI-test
} || {
  printf "Error in \"docker run\": $CONTAINERD_CRI_CNI\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $BAZEL
printf "\nRUN yum -y install $BAZEL\nRUN $BAZEL --version" >> Dockerfile
{
  docker build -t $BAZEL-test -f $TRAVIS_BUILD_DIR/$BAZEL/Dockerfile .
} || {
  printf "Error in \"docker build\": $BAZEL\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $BAZEL-test
} || {
  printf "Error in \"docker run\": $BAZEL\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $DOCKER_CE
printf "\nRUN yum -y install $DOCKER_CE\nRUN docker --version" >> Dockerfile
{
  docker build -t $DOCKER_CE-test -f $TRAVIS_BUILD_DIR/$DOCKER_CE/Dockerfile .
} || {
  printf "Error in \"docker build\": $DOCKER_CE\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $DOCKER_CE-test
} || {
  printf "Error in \"docker run\": $DOCKER_CE\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $DOCKER_CE_CLI
printf "\nRUN yum -y install $DOCKER_CE_CLI\nRUN docker --version" >> Dockerfile
{
  docker build -t $DOCKER_CE_CLI-test -f $TRAVIS_BUILD_DIR/$DOCKER_CE_CLI/Dockerfile .
} || {
  printf "Error in \"docker build\": $DOCKER_CE_CLI\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $DOCKER_CE_CLI-test
} || {
  printf "Error in \"docker run\": $DOCKER_CE_CLI\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $GLIDE
printf "\nRUN yum -y install $GLIDE\nRUN $GLIDE --version" >> Dockerfile
{
  docker build -t $GLIDE-test -f $TRAVIS_BUILD_DIR/$GLIDE/Dockerfile .
} || {
  printf "Error in \"docker build\": $GLIDE\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $GLIDE-test
} || {
  printf "Error in \"docker run\": $GLIDE\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $GRAFANA_CLI
printf "\nRUN yum -y install $GRAFANA_CLI\nRUN $GRAFANA_CLI --version" >> Dockerfile
{
  docker build -t $GRAFANA_CLI-test -f $TRAVIS_BUILD_DIR/$GRAFANA_CLI/Dockerfile .
} || {
  printf "Error in \"docker build\": $GRAFANA_CLI\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $GRAFANA_CLI-test
} || {
  printf "Error in \"docker run\": $GRAFANA_CLI\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $KIALI
printf "\nRUN yum -y install $KIALI\nRUN $KIALI --help" >> Dockerfile
{
  docker build -t $KIALI-test -f $TRAVIS_BUILD_DIR/$KIALI/Dockerfile .
} || {
  printf "Error in \"docker build\": $KIALI\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $KIALI-test
} || {
  printf "Error in \"docker run\": $KIALI\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $MINIKUBE
printf "\nRUN yum -y install $MINIKUBE\nRUN $MINIKUBE version" >> Dockerfile
{
  docker build -t $MINIKUBE-test -f $TRAVIS_BUILD_DIR/$MINIKUBE/Dockerfile .
} || {
  printf "Error in docker build: $MINIKUBE\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $MINIKUBE-test
} || {
  printf "Error in docker run: $MINIKUBE\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $MINIO
printf "\nRUN yum -y install $MINIO\nRUN $MINIO --version" >> Dockerfile
{
  docker build -t $MINIO-test -f $TRAVIS_BUILD_DIR/$MINIO/Dockerfile .
} || {
  printf "Error in \"docker build\": $MINIO\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $MINIO-test
} || {
  printf "Error in \"docker run\": $MINIO\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $MINIO_MC
MINIO_MC_PACKAGE="mc"
printf "\nRUN yum -y install $MINIO_MC_PACKAGE\nRUN $MINIO_MC_PACKAGE --version" >> Dockerfile
{
  docker build -t $MINIO_MC-test -f $TRAVIS_BUILD_DIR/$MINIO_MC/Dockerfile .
} || {
  printf "Error in \"docker build\": $MINIO_MC\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $MINIO_MC-test
} || {
  printf "Error in \"docker run\": $MINIO_MC\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $RESTIC
printf "\nRUN yum -y install $RESTIC\nRUN $RESTIC version" >> Dockerfile
{
  docker build -t $RESTIC-test -f $TRAVIS_BUILD_DIR/$RESTIC/Dockerfile .
} || {
  printf "Error in \"docker build\": $RESTIC\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $RESTIC-test
} || {
  printf "Error in \"docker run\": $RESTIC\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $TERRAFORM
printf "\nRUN yum -y install $TERRAFORM\nRUN $TERRAFORM --version" >> Dockerfile
{
  docker build -t $TERRAFORM-test -f $TRAVIS_BUILD_DIR/$TERRAFORM/Dockerfile .
} || {
  printf "Error in \"docker build\": $TERRAFORM\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $TERRAFORM-test
} || {
  printf "Error in \"docker run\": $TERRAFORM\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $RCLONE
printf "\nRUN yum -y install $RCLONE\nRUN $RCLONE --version" >> Dockerfile
{
  docker build -t $RCLONE-test -f $TRAVIS_BUILD_DIR/$RCLONE/Dockerfile .
} || {
  printf "Error in \"docker build\": $RCLONE\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $RCLONE-test
} || {
  printf "Error in \"docker run\": $RCLONE\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $MATCHBOX
printf "\nRUN yum -y install $MATCHBOX\nRUN $MATCHBOX --version" >> Dockerfile
{
  docker build -t $MATCHBOX-test -f $TRAVIS_BUILD_DIR/$MATCHBOX/Dockerfile .
} || {
  printf "Error in \"docker build\": $MATCHBOX\n" >> $TRAVIS_BUILD_DIR/log_error
}
{
  docker run -d $MATCHBOX-test
} || {
  printf "Error in \"docker run\": $MATCHBOX\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

if [ "$(cat log_error)" != "" ]
then
  echo "Unsuccessful tests:"
  cat log_error
  exit 1
fi
