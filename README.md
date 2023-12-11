```akash@sky:~/Desktop/Devops_cloud_batch$ kubectl api-resources 
NAME                              SHORTNAMES   APIVERSION                             NAMESPACED   KIND
bindings                                       v1                                     true         Binding
componentstatuses                 cs           v1                                     false        ComponentStatus
configmaps                        cm           v1                                     true         ConfigMap
endpoints                         ep           v1                                     true         Endpoints
events                            ev           v1                                     true         Event
limitranges                       limits       v1                                     true         LimitRange
namespaces                        ns           v1                                     false        Namespace
nodes                             no           v1                                     false        Node
persistentvolumeclaims            pvc          v1                                     true         PersistentVolumeClaim
persistentvolumes                 pv           v1                                     false        PersistentVolume
pods                              po           v1                                     true         Pod
podtemplates                                   v1                                     true         PodTemplate
replicationcontrollers            rc           v1                                     true         ReplicationController
```
```
akash@sky:~/Desktop/Devops_cloud_batch$ kubectl create namespace jecrc
namespace/jecrc created
akash@sky:~/Desktop/Devops_cloud_batch$ kubectl get ns
NAME                   STATUS   AGE
default                Active   156d
ingress-nginx          Active   156d
jecrc                  Active   8s
kube-node-lease        Active   156d
```
```
akash@sky:~/Desktop/Devops_cloud_batch$ kubectl apply -f pod1.yml --namespace jecrc
pod/myapp created
akash@sky:~/Desktop/Devops_cloud_batch$ kubectl get po --namespace jecrc 
NAME    READY   STATUS     RESTARTS   AGE
myapp   0/1     Init:3/5   0          31s
akash@sky:~/Desktop/Devops_cloud_batch$ kubectl get po --namespace jecrc  -w
NAME    READY   STATUS     RESTARTS   AGE
myapp   0/1     Init:3/5   0          68s
myapp   0/1     Init:3/5   0          73s
myapp   0/1     Init:4/5   0          79s
myapp   0/1     Init:4/5   0          102s
myapp   0/1     PodInitializing   0          103s
myapp   1/1     Running           0          107s
^Cakash@sky:~/Desktop/Devops_cloud_batch$ kubectl get po --namespace jecrc  
NAME    READY   STATUS    RESTARTS   AGE
myapp   1/1     Running   0          118s
```