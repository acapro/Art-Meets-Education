Rails.application.routes.draw do
  devise_for :admins
  root 'pages#index'
  get '/sitemap' => 'pages#sitemap', format: :xml, as: :page_sitemap
  get '/about' => 'pages#abouts', as: :page_abouts
  get '/about/:path' => 'pages#about', as: :page_about
  get '/exhibits' => 'pages#exhibits', as: :page_exhibits
  get '/exhibits/:id' => 'pages#exhibit', as: :page_exhibit
  get '/press' => 'pages#press', as: :page_press
  get '/team' => 'pages#team', as: :page_team
  get '/partners' => 'pages#partners', as: :page_partners
  get '/projects' => 'pages#projects', as: :page_projects
  get '/projects/:id', to: 'pages#project', as: :page_project
  get '/kids/:id', to: 'pages#kid', as: :page_kid
  get '/contact', to: 'pages#contact', as: :page_contact
  get '/redirect', to: 'pages#redirect', as: :redirect
  get '/donate', to: 'pages#donate', as: :page_donate

  get '/admin' => 'projects#index'
  scope '/admin' do
    resources :projects do
      resources :kids, shallow: true
    end
    resources :about_sections
    resources :teams
    resources :press_kits
    resources :exhibits
    resources :contacts
    resources :donations
    resources :partners
    resources :images, only: [:destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
