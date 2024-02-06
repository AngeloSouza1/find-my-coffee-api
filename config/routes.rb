Rails.application.routes.draw do

  namespace :api do #/api
    namespace :v1 do  #/v1
     
      resources :stores, only: [:index, :show], :defaults => { :format => 'json' }
      resources :ratings, only: [:create], :defaults => { :format => 'json' }
      resources :google_stores, only: [:index, :show], :defaults => { :format => 'json' }
    end
  end
  
end