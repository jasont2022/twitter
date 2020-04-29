# README

# Project Proposal
* Name (PennKey): jastran
* Project Name: MiniTwitter

## Description
This project is a mini version of Twitter! The final homework was suppose to be 
implementing a mini Facebook, but we didn't do it :( ! However, I will be implementing
a mini version of Twitter. This will include the important features of Twitter:
Tweets and followers. More on the database and model relationship below. I will use additonal gems such as devise and the Twitter API for tweet search, direct messages, or some other thing. I am still thinking about the API componenet. 

## Database Schema
User has many Tweets
User has many Users (following/followers)

https://docs.google.com/document/d/1cbN5mKKu4K8Luzq-T-wIwc3ORp9O2udcfIZRrdjEkFM/edit?usp=sharing 
For a Table View

## Third Party Utilities
##### Gem(s)
Devise - user roles and authentication for user login, authentication, etc.
Gaurd & Guard LiveReload - useful for live roading the views when changing them in files

##### API(s)
Twitter API (direct messaging, users and accounts, search tweets)
These APIs from Twitter are to make some features possible like direct message, tweets like views from twitter, etc.
(still thinking about it)

## Build Plan
### Step 1:
Start by creating a new Rails project.

### Step 2:
Create a private GitLab repository on my personal account.

### Step 3:
Work on the Models 
Generate all of the tables with the appropriate generator for Tweets and Replies

### Step 4:
Set up associations and add validations to the Tweets and Replies
Make sure the relationship between models are correct

### Step 5:
Test my models in the Rails Console (or write my own tests) and commit again when everything is working as expected

### Step 6:
Work on the controllers and think about all of the routes and views that I will need for my application

### Step 7:
Work on the basic views and set them up

### Step 8:
Repeat step 3 to 6 for users and the devise gem
work on other gems too

### Step 9:
Implement the API for this app, once the controller is setted up

### Step 10:
make this app look production ready. 
