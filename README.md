#  Webmachine clickstart

This clickstart sets up a simple Hello World Webmachine app.

<a href="https://grandcentral.cloudbees.com/?CB_clickstart=https://raw.github.com/CloudBees-community/webmachine-clickstart/master/clickstart.json"><img src="https://s3.amazonaws.com/cloudbees-downloads/clickstart/clickstart-now.png"/></a>

Launch this clickstart and glory could be yours too ! Use it as a building block if you like.
You can launch this on Cloudbees via a clickstart automatically, or follow the instructions below. 

# Deploying manually: 

## Important note:

You'll have to compile your project before pushing it to git, if you want the following steps to work.

## To build and deploy this on CloudBees, follow those steps:

Create application:

    bees app:create MYAPP_ID -t webmachine

Create a new software project in Jenkins, changing the following:

* Add this git repository (or yours, with this code) on Jenkins
    
* Add an "Execute Shell" build step with:
    
        rm -rf target
        mkdir target
        zip target/webmachine.zip .
    
* Also add a post-build step "Deploy to CloudBees" with those parameters:

        Applications: First Match
        Application Id: MYAPP_ID
        Filename Pattern: target/webmachine.zip

## To build this locally:

In the webmachine-clickstart directory, open a command line, and type:

    make
    zip ../webmachine.zip .

Then deploy it on cloudbees typing:

    bees app:deploy -a MYAPP_ID -t webmachine ../webmachine.zip

## To run this locally

In the project directory, run the following, and then browse to localhost:8000

    ./start.sh