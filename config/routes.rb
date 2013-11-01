Wsse::Application.routes.draw do

  resources :restaurants, :only => [:index, :create, :show] do
    resources :comments, :only => [:create]
  end

  resources :votes, :only => [:create]

  root :to => 'restaurants#index'
end
