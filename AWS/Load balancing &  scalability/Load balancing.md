load balancingf - away to distubute taffice across diffrnet server 

elb isits between users and iunstances when traffic omes in forwatrds the requerst downstream checks what instances are healthy and directs traffic accordingly 
keeps apps respincive and avlalable 
when goes down elb stops sending traffic there and redirects (semeless to users)
reverse proxys


why use - 
-primary job is to spread the load across instances 
-single point of acceess dns 
- seemlessly handel failuers and 
- regualr health checks 
- can hamdel  ssl and https encription 
- sticky session users are sent back to the same instance for their request 
- high avalablity across zones 
- seperate priavte and public traffic 


why use elb
- is a mannaged load balancer (means aws takes care of it )
    -aws guarentee 
    - aws manages updates and maintance 
    - less config 
- diy load balancer 
    - lost m ore more handeling mainatnace, monitoring scaling, 
- elb already interngration 
    - works with auto scaling goups , amazxon ecs 
    - aws cirtificate mananger, cloud watch
    -  

health checks 
enable a load balancers to know if an instance that it is forwarding traffic to is healthey 
- does this by sending a request ot a port and root 
eg /health if it does n ot respond with 200 it is undeathly 
- this ia automatic 
- 

aws load balancer 

clb - classic load balancer 
- support basic http https tcb 
- old gen 

ALB - application load balancer
- operates on layer 7 - 
- smart enough to understand what is going on in the reuest ist self like headers cookies urls 
-  load balance traffic  on multiple http applicaiton across multiple machines or within target group. can also balance tgraffic across multiple applicaiton runnin on the same machine (like containers )
htttp/2 support and websockets 

- routing traffic to diffrent target groups can be instances lamda functions or containers 
- routing based on path url( eg : yaseen.com/users)
- host based routing (eg blog.yaseen.com )
- query baeed routing (yaseen.com/users?id=425&order=false)
- good for micro services and contarenbes apps 
- port maping for ecs 
- if clb was used it woud need a load balancer per app 


tager groups- groups of resources that a alb routs traffic too
each targer group is tied to a servece or app allowing you to scale diffrent parts independently 
ec2 instances can be manged by an auto scaling group
alb also spports routing traffic to lamda functions 
private ip adresses - must be private 
alb allows you to rout traffic to multiple target groups eg one for user requests



NLB 

GWLb

load balancers secruiry grouips 

allow users to connect to laod balancers from anywher from the interntet 
allwos traffic  over port 80 port 443 https source is 0,00,00 

then you have the sg for the security group where you restric access so that only the load balancer can talk to the ec2 instance 