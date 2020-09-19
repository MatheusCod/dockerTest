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
printf "\nRUN yum -y install $MINIKUBE\nRUN $MINIKUBE --version" >> Dockerfile
docker build -t $MINIKUBE-test -f $TRAVIS_BUILD_DIR/$MINIKUBE/Dockerfile .
{
#docker run -d $MINIKUBE-test
wekrpojpgjpewhgqew
} || {
printf "error: $MINIKUBE\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

cd $RESTIC
printf "\nRUN yum -y install $RESTIC\nRUN $RESTIC version" >> Dockerfile
docker build -t $RESTIC-test -f $TRAVIS_BUILD_DIR/$RESTIC/Dockerfile .
{
docker run -d $RESTIC-test
} || {
printf "error: $RESTIC\n" >> $TRAVIS_BUILD_DIR/log_error
}
cd $TRAVIS_BUILD_DIR

if [ "$(cat log_error)" != "" ]
then
  echo "Unsuccessful tests:"
  cat log_error
  exit 1
fi

#cd $CONTAINERD
#printf "\nRUN yum -y install $CONTAINERD" >> Dockerfile
#printf "\nRUN if ajosjdiasd; then else printf '$CONTAINERD error RPM AAAAAAAAAAAAAAAAAAAAAAA' >> log_error >> Dockerfile; if" >> Dockerfile
#printf "\nRUN $CONTAINERD -ajosjdiasd || printf '$CONTAINERD error RPM AAAAAAAAAAAAAAAAAAAAAAA' >> log_error" >> Dockerfile
#docker build -t $CONTAINERD-test -f $TRAVIS_BUILD_DIR/$CONTAINERD/Dockerfile .
#docker run -d $CONTAINERD-test
#docker cp $CONTAINERD-test:/log_error $TRAVIS_BUILD_DIR
#cat log_error >> log_error_total
#cat log_error_total
#cd $TRAVIS_BUILD_DIR

#cd $CONTAINERD
#printf "\nRUN yum -y install $CONTAINERD\nRUN $CONTAINERD --version" >> Dockerfile
#docker build -t $CONTAINERD-test -f $TRAVIS_BUILD_DIR/$CONTAINERD/Dockerfile .
#docker run -d $CONTAINERD-test
#cd $TRAVIS_BUILD_DIR

#cd $CONTAINERD_CRI
#printf "\nRUN yum -y install $CONTAINERD_CRI\nRUN $CONTAINERD --version" >> Dockerfile
#docker build -t $CONTAINERD_CRI-test -f $TRAVIS_BUILD_DIR/$CONTAINERD_CRI/Dockerfile .
#docker run -d $CONTAINERD_CRI-test
#cd $TRAVIS_BUILD_DIR

#cd $CONTAINERD_CRI_CNI
#printf "\nRUN yum -y install $CONTAINERD_CRI_CNI\nRUN $CONTAINERD --version" >> Dockerfile
#docker build -t $CONTAINERD_CRI_CNI-test -f $TRAVIS_BUILD_DIR/$CONTAINERD_CRI_CNI/Dockerfile .
#docker run -d $CONTAINERD_CRI_CNI-test
#cd $TRAVIS_BUILD_DIR

#cd $BAZEL
#printf "\nRUN yum -y install $BAZEL\nRUN $BAZEL --version" >> Dockerfile
#docker build -t $BAZEL-test -f $TRAVIS_BUILD_DIR/$BAZEL/Dockerfile .
#docker run -d $BAZEL-test
#cd $TRAVIS_BUILD_DIR

#cd $DOCKER_CE
#printf "\nRUN yum -y install $DOCKER_CE\nRUN docker --version" >> Dockerfile
#docker build -t $DOCKER_CE-test -f $TRAVIS_BUILD_DIR/$DOCKER_CE/Dockerfile .
#docker run -d $DOCKER_CE-test
#cd $TRAVIS_BUILD_DIR

#cd $DOCKER_CE_CLI
#printf "\nRUN yum -y install $DOCKER_CE_CLI\nRUN docker --version" >> Dockerfile
#docker build -t $DOCKER_CE_CLI-test -f $TRAVIS_BUILD_DIR/$DOCKER_CE_CLI/Dockerfile .
#docker run -d $DOCKER_CE_CLI-test
#cd $TRAVIS_BUILD_DIR

#cd $GLIDE
#printf "\nRUN yum -y install $GLIDE\nRUN $GLIDE --version" >> Dockerfile
#docker build -t $GLIDE-test -f $TRAVIS_BUILD_DIR/$GLIDE/Dockerfile .
#docker run -d $GLIDE-test
#cd $TRAVIS_BUILD_DIR

#cd $GRAFANA_CLI
#printf "\nRUN yum -y install $GRAFANA_CLI\nRUN $GRAFANA_CLI --version" >> Dockerfile
#docker build -t $GRAFANA_CLI-test -f $TRAVIS_BUILD_DIR/$GRAFANA_CLI/Dockerfile .
#docker run -d $GRAFANA_CLI-test
#cd $TRAVIS_BUILD_DIR

#cd $KIALI
#printf "\nRUN yum -y install $KIALI\nRUN $KIALI --help" >> Dockerfile
#docker build -t $KIALI-test -f $TRAVIS_BUILD_DIR/$KIALI/Dockerfile .
#docker run -d $KIALI-test
#cd $TRAVIS_BUILD_DIR

#cd $MINIKUBE
#printf "\nRUN yum -y install $MINIKUBE\nRUN $MINIKUBE version" >> Dockerfile
#docker build -t $MINIKUBE-test -f $TRAVIS_BUILD_DIR/$MINIKUBE/Dockerfile .
#docker run -d $MINIKUBE-test
#cd $TRAVIS_BUILD_DIR

#cd $MINIO
#printf "\nRUN yum -y install $MINIO\nRUN $MINIO --version" >> Dockerfile
#docker build -t $MINIO-test -f $TRAVIS_BUILD_DIR/$MINIO/Dockerfile .
#docker run -d $MINIO-test
#cd $TRAVIS_BUILD_DIR

#cd $MINIO_MC
#MINIO_MC_PACKAGE="mc"
#printf "\nRUN yum -y install $MINIO_MC_PACKAGE\nRUN $MINIO_MC_PACKAGE --version" >> Dockerfile
#docker build -t $MINIO_MC-test -f $TRAVIS_BUILD_DIR/$MINIO_MC/Dockerfile .
#docker run -d $MINIO_MC-test
#cd $TRAVIS_BUILD_DIR

#cd $RESTIC
#printf "\nRUN yum -y install $RESTIC\nRUN $RESTIC version" >> Dockerfile
#docker build -t $RESTIC-test -f $TRAVIS_BUILD_DIR/$RESTIC/Dockerfile .
#docker run -d $RESTIC-test
#cd $TRAVIS_BUILD_DIR

#cd $TERRAFORM
#printf "\nRUN yum -y install $TERRAFORM\nRUN $TERRAFORM --version" >> Dockerfile
#docker build -t $TERRAFORM-test -f $TRAVIS_BUILD_DIR/$TERRAFORM/Dockerfile .
#docker run -d $TERRAFORM-test
#cd $TRAVIS_BUILD_DIR

#cd $RCLONE
#printf "\nRUN yum -y install $RCLONE\nRUN $RCLONE --version" >> Dockerfile
#docker build -t $RCLONE-test -f $TRAVIS_BUILD_DIR/$RCLONE/Dockerfile .
#docker run -d $RCLONE-test
#cd $TRAVIS_BUILD_DIR

#cd $MATCHBOX
#printf "\nRUN yum -y install $MATCHBOX\nRUN $MATCHBOX --version" >> Dockerfile
#docker build -t $MATCHBOX-test -f $TRAVIS_BUILD_DIR/$MATCHBOX/Dockerfile .
#docker run -d $MATCHBOX-test
#cd $TRAVIS_BUILD_DIR
