Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'studios#index'

get 'studios', to: 'studios#index'
get 'actors/:actor_id', to: 'actors#show'



end
