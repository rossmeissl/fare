Fare::Application.routes.draw do
  resources :posts do
    get 'list', :on => :collection
    get 'map', :on => :collection
  end
  resources :searches, :only => :create
  resources :user_sessions, :only => [:create, :new]
  match "/login" => redirect("/user_sessions/new")
  root :to => "posts#index"
end
