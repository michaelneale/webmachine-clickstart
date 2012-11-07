#  Webmachine clickstart

This clickstart sets up a basic app with continuous deployment
running on CloudBees.
Webmachine, by basho, is a fantastically scalable web server which powers things like the Riak database.

<a href="https://grandcentral.cloudbees.com/?CB_clickstart=https://raw.github.com/michaelneale/webmachine-clickstart/master/clickstart.json"><img src="https://d3ko533tu1ozfq.cloudfront.net/clickstart/deployInstantly.png"/></a>

Launch this clickstart and glory could be yours too ! Use it as a building block if you like.
You can launch this on Cloudbees via a clickstart automatically, or follow the instructions below. 

# Running this app locally

0. Install Erlang and clone this repo
1. cd into repo dir
2. make && ./start.sh
3. open a browser to localhost:8000
4. If you make a change, run make again (in another shell) and it will reload


# Deploying manually to CloudBees 


## To build and deploy this on CloudBees, follow those steps:

# install Erlang if you don't already have it

    git clone THIS PROJECT
    cd THIS PROJECT
    make deps # download the shizzles needed 
    mkdir target
    zip -r ./target/app.zip *
    bees app:deploy MYAPP_ID -t webmachine target/app.zip 


