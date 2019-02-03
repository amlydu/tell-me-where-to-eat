Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'where_to_eat/options'
      get 'where_to_eat/just_tell_me'
    end
  end
end
