# services 
 
like connectors that  make sure everthing that needs to communicate to each other does is a resource 
- you do not have to worry about the specifics of networking 
- allows you to build applications in a loosely coupled way.
- allows each part of a app to work independently and makes your app more modular and easy to manage 
- uses lables to identify each pod 

- nodeports - exposes your service on a specific port on each node in your cluster
- load balancer - useed in could env, creates a load balancer that distubttes load across the pods 

# cluster ip 

 gives a stable internal ip that each pod can use to talk to eachother 