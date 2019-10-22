Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :image_uploads, only: [:new, :create]
  root to: 'image_uploads#new'
end
