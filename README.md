![](/public/readme_imgs/dragonrentals_logo.png)
---
# **Dragon Rentals** 
Now you can rent a dragon! Yeah, it's amazing, isn't it? 
### Installation
#### System Dependencies 
First of all, you need to install the following: 
- Ruby 3.0.0 version ([See More](https://www.ruby-lang.org/en/documentation/installation/))
- Yarn 1.22.11
- Node.js 16.8.0
- Rails 6.1.4.1
- Bundler 2.2.20

#### Configuration
After this you need to install the Gemfile configuration 
```
$ bundle install
```
#### Database Creation 
```
$ rake db:create
```
#### Database Migration
In order to bring your schema up to date, you'll need to run the migrations against the development database ([See More](https://guides.rubyonrails.org/testing.html#the-test-database)):
```
$ db:migrate
```
#### Running Test Suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
