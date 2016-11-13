# dowapi

A simple API created with Rails 5, providing data in JSON format.  The database is postgreSQL. 



## Data

[Football All-Ireland Winners](http://dowapi.tomgdow.com/football_all_irelands) 

[Hurling all-Ireland Winners](http://dowapi.tomgdow.com/hurling_all_irelands) 

[Irish Taoisigh](http://dowapi.tomgdow.com/taoisigh) 

### Deployment

http://dowapi.tomgdow.com

http://dowapi.tomgdow.com/football_all_irelands

http://dowapi.tomgdow.com/hurling_all_irelands

http://dowapi.tomgdow.com/taoisigh

http://dowapi.tomgdow.com/taoisigh/fiannafail

http://dowapi.tomgdow.com/taoisigh/finegael

###  Log  

```
mkdir dowapi
cd dowapi
rails new . -d postgresql --api
```

 configure 'config/database.yml' (for postgreSQL)

 add gem [pry]() to Gemfile (development block)

uncomment gem [rack-cors](https://github.com/cyu/rack-cors)  in Gemfile

```
bundle install
rails db:create:all
rails generate scaffold FootballAllIreland county:string description:text winfirst:integer winlast:integer wintotal:integer
rails db:migrate
rails c
load '../allIrelandData.rb'

# for production
RAILS_ENV=production rails console
load '../allIrelandData.rb'
```

