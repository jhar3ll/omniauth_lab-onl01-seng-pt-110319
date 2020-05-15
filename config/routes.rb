Rails.application.routes.draw do
  # Add your routes here
  get 'welcome/home' => 'welcome#home'
  root 'welcome#home'

  match '/app/github/callback', to: 'sessions#create', via: [:get, :post]
end
