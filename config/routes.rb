Rails.application.routes.draw do
  devise_for :admins
  root 'pages#index'
  get '/about' => 'pages#abouts', as: :page_abouts
  get '/about/:path' => 'pages#about', as: :page_about
  get '/team' => 'pages#team', as: :page_team
  get '/projects' => 'pages#projects', as: :page_projects
  get '/projects/:id', to: 'pages#project', as: :page_project
  get '/kids/:id', to: 'pages#kid', as: :page_kid

  get '/admin' => 'projects#index'
  scope '/admin' do
    resources :projects do
      resources :kids, shallow: true
    end
    resources :about_sections
    resources :teams
    resources :press_sections
    resources :images, only: [:destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
