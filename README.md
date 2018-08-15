# README

### Step 1: 

Install Rails 5.0 + (install latest). 
https://gorails.com/setup/ubuntu/16.04 

Also make sure to install mini-magik and redis-stable

### Step 2: 

go to directory of the contained folder, and in config/database.yml file and change the parameters as you had setup in Step 1: 

### Step 3: Type in this in directory of the folder(via terminal)

bundle install 
rails db:migrate 
rails s 

go to http://localhost:3000/ 

### Step 4: Change append files for chatbot 

You can find the file in public/chatbot_append.js .  Change chaturbots.com to localhost:3000
