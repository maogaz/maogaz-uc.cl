Rails.application.routes.draw do
  get 'search/index'
  get 'place/index'
  get 'character/index'
  get 'episode/index'
  get 'place/index'
  root to: 'welcome#index'
  get '/search' => 'search#index'
  get 'search/search' => 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
