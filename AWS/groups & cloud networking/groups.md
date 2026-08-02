

control how traffinc flwos in and out of ec2 instances 

only allow rules anying isnt allwod is blocked 

if in bouns ins allwded the outbound is auto allowed also 

acts like a firewall 

controlls waht ports are open 

autho ip ranges 

sgs contoll what is allowed in 


http - port 80 
ssh  port 22 - spource 



can be attached to multiple instances lcked to a reagon and a vpc

one layer above the instance 
good practivce to ahavea sg for ssg so that you can check it when you cant coonect 

all inbod is bloced by default 

refrenceing other sgs

you can auth other sgs to talk to ther instances 
simple because it uses sg as a reference rahter then ips  


ports top know 
22- ssh
21 -sftp 
80- http
443- https
53- dns
3389= rdp