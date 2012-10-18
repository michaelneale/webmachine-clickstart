#  Webmachine clickstart

This clickstart sets up a simple Hello World Webmachine app.

<a href="https://grandcentral.cloudbees.com/?CB_clickstart=https://raw.github.com/michaelneale/webmachine-clickstart/master/clickstart.json"><img src="https://d3ko533tu1ozfq.cloudfront.net/clickstart/clickstart-now.png"/></a>

Launch this clickstart and glory could be yours too ! Use it as a building block if you like.
You can launch this on Cloudbees via a clickstart automatically, or follow the instructions below. 

# Deploying manually: 


## To build and deploy this on CloudBees, follow those steps:

    git clone THIS PROJECT
    cd THIS PROJECT

    make deps # download the shizzles needed 
    mkdir target
    zip ./target/app.zip
    bees app:deploy MYAPP_ID -t webmachine target/app.zip 


## To run this locally

In the project directory, run the following, and then browse to localhost:8000

    make && ./start.sh