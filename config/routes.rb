Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # after_sign_in to: 'mains#test'
  # landing page
  
  devise_for :users
  
  root to: 'mains#home'
  get '/errors' => 'mains#error'

  resources :locations, only: [:show, :index] do 
    resources :dailies, only: [:new, :create, :edit, :update, :destroy] do 
      member { get 'status' }
    end
  end


  # devise_scope :user do 
  # 	get 'users/sign_in', to: 'mains#test'
  # end

end
