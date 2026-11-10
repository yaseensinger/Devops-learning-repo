# persitant storage
- pods are ephemeral and are replaced whenever they go down 
- perwsistant storage means then databaes go down they can pick up where the old one left off
- importat when for statefull apps 

## persiatnt volumes
- peice of storage set a side for apps in k8s 
- created by admins 
- foundatgion

## persistant volume store chain 
- request that athe app sends the cluster that says that   it needs storage
- when a app requests it needs to difne what it needs and access 
- the cluster looks for a pv that mathes and binds it to the pvc 
- acts as the middle man that connects the app to the storage resources in the cluster 

## statefuill sets 

- controller for statefull aplications
- gives each pod meaningull names pod-1, pod-2, pod-3
- stable storage perisitant voilumes bound to the poods 
- ordered deploymetns and scaling 
- used with headless service to direct traffic . 

## dynamic provisioning

- dev creates a pvc targerting a storage class > k8s will use the cloud api to provision the exact persistant disk size requested > creates a pv and binds it to the pvc 

##  ephemeral storage 

- storage the exists only for the lifetime of the pod, when the pods dies so does the storage
- created when the pods pod stares 
- used for cache, shareing data between contianers in the same pod 

## csi drivers

- standurd api that lets k8s talk to any backend 
- driver runs as pods in the cluster and k8s talks to it as a interface 
-  vendors can release  updates without the need for k8s to update 
- contoller plug in that runs somehere in the cluster handels provisionsing and attaches volumess 
- node plug in - runs on each node as a deamons set mounts volumes to the pods in that node 