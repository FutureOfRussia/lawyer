Rails.application.routes.draw do
  root to: 'page#index'

  match '/call', to: 'page#call', via: 'get'
  match '/back', to: 'page#back', via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
