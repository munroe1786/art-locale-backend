Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :museums
      resources :artists
    end 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#fetch(url) - normally - ('http://localhost:3000')

#want to incorporate name spacing with api v1 included

#fetch requests will need to match these namespaced routes
