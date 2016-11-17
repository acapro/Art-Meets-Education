Rails.application.routes.draw do
  root 'pages#index'

  get '/admin' => 'projects#index'
  scope '/admin' do
    resources :projects
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
