Rails.application.routes.draw do
  devise_for :admins
  root 'pages#index'
  get '/projects' => 'pages#projects', as: :page_projects

  get '/admin' => 'projects#index'
  scope '/admin' do
    resources :projects do
      resources :kids, shallow: true
    end
    resources :images, only: [:destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
