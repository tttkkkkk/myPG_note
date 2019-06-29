Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'note#home'
  resources :note do
     post :confirm, action: :confirm_new, on: :new
  end

end
