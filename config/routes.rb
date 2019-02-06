Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'

  namespace :api do
    namespace :v1 do
      get 'where_to_eat/options'
      get 'where_to_eat/just_tell_me'
    end
  end
end
