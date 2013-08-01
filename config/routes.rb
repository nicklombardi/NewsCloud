NewsCloud::Application.routes.draw do

  devise_for :users

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root :to => 'welcome#index'

  resources :home, only: [:index]

  resources :data, only: [:geocoded_points]

  resources :data do
    collection do
      get :geocoded_points
    end
  end

  resources :welcome, only: [:index, :show]

  # resources :about, only: [:index, :show,]

  # resources :contact, only: [:index, :show,]

end
