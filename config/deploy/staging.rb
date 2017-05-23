server "application.staging.server", user: "deploy", roles: %w(app db web)
set :branch, "master"
set :capose_file, ["docker-compose-staging.yml"]
set :capose_commands, -> {
  [
    "build",
    "run --rm web rake assets:precompile",
    "run --rm web rake db:migrate",
    "up -d",
  ]
}
