### We can schedule our bash scripts by using "at" command

## firstly we need to install at command
    
    sudo apt install -y at

## we can schedule our job : at "date" -f ./script-name

## we can see what scripts are going to be executed by using 

    atq

## we can remove scheduled job by 

    atrm (id of the job)


