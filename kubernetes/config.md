##  config maps

- where config settins are stored
- holds variables, config, urls, 
- non cinfidental data
- ensures pods get correct config when they spin up 

## secrets
- designed to store sensetive 
- base 64 coded 
- only accessable by the pods and containers that need them 

## sealed secrets
- used for git ops where you use 