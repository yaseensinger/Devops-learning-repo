# services 
 
like connectors that  make sure everthing that needs to communicate to each other does is a resource 
- you do not have to worry about the specifics of networking 
- allows you to build applications in a loosely coupled way.
- allows each part of a app to work independently and makes your app more modular and easy to manage 
- uses lables to identify each pod 

- nodeports - exposes your service on a specific port on each node in your cluster
- load balancer - useed in could env, creates a load balancer that distubttes load across the pods 

# cluster ip 

- gives a stable internal ip that each pod can use to talk to eachother 
- allows pods to talk without outside world access. (internal ip) secure 


# Node port

- makes sercvice access able outsde the cluster 
- opens a specifc port on each node in the cluste and forwards trafttc from the port 

- allows you to access the node using the node  ip and the port

- usefull when you need to access a service to the outside work wihtout the neeed for a load balancer 
- good for local development testing 


# Load balancers 

-  when you make a service with the type load balancer it it automaticallys provisions a load balancer from your cloud provider.

- will distubute traffic aross your pods 

- pods have their internal cluster load balancer that distubters laod in the cluster 

- the external laod balancer is what users will interact with and passes traffic to the interl load balancer 
