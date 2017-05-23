# README

## Setting up

Run `docker-compose build`
Setup db `docker-compose run web bundle exec rake db:setup  `
Then `docker-compose up`

The application is available at `localhost:3333`

Postgres, Sidekiq, Redis and Crono services will be started automatically.

To stop the application run `docker-compose stop`
