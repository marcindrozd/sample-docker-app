# README

## Setting up

1. Run `docker-compose build`
1. Setup db `docker-compose run web bundle exec rake db:setup`
1. Then `docker-compose up`
1. The application is available at `localhost:3333`
1. Postgres, Sidekiq, Redis and Crono services will be started automatically.
1. To stop the application run `docker-compose stop`
