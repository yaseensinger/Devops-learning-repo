ECS  
amaosns own containter aucotratin paltform 
full ymanaged service that lets you run services

eks
amazon managed kubernetes 
can take advanctages of k8 features handels and amaozon manages wihitout hacing to controle plane yourself 

aws fargate 
Servaless cpntainer platpfor that works ecs and eks
removes the need to manafe ec2 instances 
define that ask and it manages the infa 

ecr 
docker hub for amazon 
sore and manage doacker images 
intergrated with amazon serverces 


ECS 
ecs agent middle man between the isntance and cluster 
launch types 
ec2 launch type- you are responsable for manageing the instances - must run ecs agent registes the ec2 instrance in the cluster making it avlable to ren the containesr - handels the container life cycle 

fargtate launch type (serverless)

dotn worry abnout runing any insncae
aws handels running and manages the containers
tell it how resoruses it needs and it runs based on it 
scal but incresing tasks 
aws handewls adding more contrianers 
better for teams that want to avoid running infra and focis on the containers  