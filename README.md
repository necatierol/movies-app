# README

## Requirements
``` bash
$ ruby -- 2.7.0
$ gem install rails
$ npm install --global yarn
```

## Installation

``` bash
$ bundle
$ rails db:migrate
$ rails c
$ Admin.create(:email => 'admin@moviesapp.com', :password => '123456', :password_confirmation => '123456')
```

## Running
```bash
$ rails s
```

## Api Doc
```bash
# contents service
## get content list
$ curl localhost:3000/api/v1/contents
## get content by id
$ curl localhost:3000/api/v1/contents/:content_id

# seasons service
## get content season list
$ curl localhost:3000/api/v1/contents/:content_id/seasons
## get content season by id
$ curl localhost:3000/api/v1/contents/:content_id/seasons/:season_id

# episodes service
## get content season episode list
$ curl localhost:3000/api/v1/contents/:content_id/seasons/:season_id/episodes
## get content season episode by id
$ curl localhost:3000/api/v1/contents/:content_id/seasons/:season_id/episodes/:episode_id

# authentication
## sign_up
$ curl localhost:3000/auth -X POST -H "Content-Type: application/json" -d '{"email": "necati1@mail.com", "password": "123456", "password_confirmation": "123456"}'
```
