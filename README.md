#　Table

# table name: users
|Column  |Type       |Option     |
| ------ | --------- | --------- |
|name    |reference  |null:false, foreign_key:true|
|email   |reference  |null:false, foreign_key:true|
|password|reference  |null:false, foreign_key:true|
## Association
has_many :room_users
has_many :room, through: room_users
has_many :messages

# table name: rooms
|Column  |Type       |Option     |
| ------ | --------- | --------- |
|name    |reference  |null:false, foreign_key:true|

## Association
has_many :room_users
has_many :users, through: room_users
has_many :messages

# table name: room_users
|Column  |Type       |Option     |
| ------ | --------- | --------- |
|room    |reference  |null:false, foreign_key:true|
|users   |reference  |null:false, foreign_key:true|

## Association
belongs_to :room
belongs_to :users

# table name: messages
|Column  |Type       |Option     |
| ------ | --------- | --------- |
|text    |reference  |null:false, foreign_key:true|
|image   |reference  |null:false, foreign_key:true|
|date    |reference  |null:false, foreign_key:true|
|room_name|reference  |null:false, foreign_key:true|
|user   |reference  |null:false, foreign_key:true|


## Association
belongs_to :room
belongs_to :users



# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
