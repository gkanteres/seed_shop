Rails.application.routes.draw do

   root 'categories#index'

   devise_for :admins,
   :skip => [:registrations, :sessions]

   as :admin do
  # Registrations
  get   '/admins/signup'   => 'admins/registrations#new', as: :new_admin_registration
  post  '/admins/signup'   => 'admins/registrations#create', as: :admin_registration
  # Sessions
  get   '/admins/signin'   => 'admins/sessions#new', as: :new_admin_session
  post  '/admins/signin'   => 'admins/sessions#create', as: :admin_session
  delete '/admins/signout' => 'admins/sessions#destroy', as: :destroy_admin_session
end

   devise_for :users,
   :skip => [:registrations, :sessions]

   as :user do
  # Registrations
  get   '/signup'   => 'users/registrations#new', as: :new_user_registration
  post  '/signup'   => 'users/registrations#create', as: :user_registration
  # Sessions
  get   '/signin'   => 'users/sessions#new', as: :new_user_session
  post  '/signin'   => 'users/sessions#create', as: :user_session
  delete '/signout' => 'users/sessions#destroy', as: :destroy_user_session
end

   resources :categories do
     resources :products
   end


end
