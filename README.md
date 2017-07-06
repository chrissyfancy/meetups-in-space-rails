# Meetups in Space - Rails

### Introduction

You'll be building a website similar to Meetup.com that allows users to sign up, join existing meetings, and even create their own meetup.

We want to convert our version of "Meetups in Space" running on Sinatra, to a Rails application.

### Getting Started

To get this boilerplate up and running, the following commands were run:

* `rails new meetups-in-space-rails --database=postgresql --skip-turbolinks --skip-test-unit`

### Commands to Set Up the Database

* `bundle install`
* `rake db:create`
* `rake db:migrate`

### Seeding the Database

In order to run `rake db:seed` to seed the database with the Faker data, the following tables and associated columns must be created:

##### Events
| Column Name | Column Type|
| :---------- | :--------  |
| name        | string     |
| description | string     |
| location    | string     |
| date        | date       |

##### Topics
| Column Name | Column Type|
| :---------- | :--------  |
| name        | string     |

##### Meetups (Join)
| Column Name | Column Type|
| :---------- | :--------  |
| event_id    | integer    |
| topic_id    | integer    |
