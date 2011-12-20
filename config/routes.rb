Fare::Application.routes.draw do
  resources :posts do
    get 'list', :on => :collection
  end
  resources :searches
  root :to => "posts#index"
end
