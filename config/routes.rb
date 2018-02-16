# Contributions
# Frank Evers: Addition of ports, boats, rooms, trips resources
# Andrew Storch: Addition of Devise :users, custom routes


Rails.application.routes.draw do
  resources :ports
  resources :reservations
  resources :boats
  resources :rooms
  resources :trips

  # use custom controller for registrations
  devise_for :users, :controllers => {registrations: 'user/registrations'}


  get 'home/index'
  root 'home#index'


  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy'
    get 'users/:id/edit', to: 'user/registrations#edit_user'
  end

  get 'home/show', to: 'home#show_reservations'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
