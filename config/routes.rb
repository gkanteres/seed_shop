Rails.application.routes.draw do

   root 'categories#index'

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
