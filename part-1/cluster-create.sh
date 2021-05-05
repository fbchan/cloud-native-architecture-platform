#!/bin/sh
#k3d cluster create cpaas1 --image docker.io/rancher/k3s:v1.18.15-k3s1 --k3s-server-arg "--disable=servicelb" --k3s-server-arg "--disable=traefik" --k3s-server-arg --tls-san="10.10.2.10" --k3s-server-arg --tls-san="k3s.foobz.com.au" --k3s-server-arg '--flannel-backend=none' --volume "$(pwd)/calico-k3d.yaml:/var/lib/rancher/k3s/server/manifests/calico.yaml" --no-lb --servers 1 --agents 3

k3d cluster create cpaas1 --image docker.io/rancher/k3s:v1.19.9-k3s1 --k3s-server-arg "--disable=servicelb" --k3s-server-arg "--disable=traefik" --k3s-server-arg --tls-san="10.10.2.10" --k3s-server-arg --tls-san="k3s.foobz.com.au" --k3s-server-arg '--flannel-backend=none' --volume "$(pwd)/calico-k3d.yaml:/var/lib/rancher/k3s/server/manifests/calico.yaml" --no-lb --servers 1 --agents 3

