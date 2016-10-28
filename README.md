# dowapi

A simple example of an application program interface created with Ruby-on-Rails 5. The database is postgreSQL.  The API returns a list of Gaelic Football All-Ireland winners in JSON format. 

###  Basic Log  

```
mkdir dowapi
cd dowapi
rails new . -d postgresql --api
```

> configure 'config/database.yml'

> add [pry]() gem to Gemfile (development block)

```
rails db:create:all
rails generate scaffold FootballAllIreland county:string description:text winfirst:integer winlast:integer wintotal:integer
rails db:migrate
rails c
load '../allIrelandData.rb
```

###  Deployment

http://dowapi.tomgdow.com
