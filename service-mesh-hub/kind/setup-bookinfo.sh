. ./env.sh

## Install Bookinfo on cluster 1
kubectl label --context $CLUSTER_1 namespace default istio-injection=enabled --overwrite
kubectl apply -f resources/bookinfo-cluster1.yaml --context $CLUSTER_1




## Install Bookinfo on cluster 2
kubectl label namespace default istio-injection=enabled --context $CLUSTER_2 --overwrite
kubectl apply -f resources/bookinfo-cluster2.yaml --context $CLUSTER_2
