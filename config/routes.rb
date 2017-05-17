Rails.application.routes.draw do
  require "sidekiq/web"

  mount Sidekiq::Web => "/sidekiq"

  root to: "pages#index"
end
