Rails.application.routes.draw do
  root 'sections#index'
  
  resources :sections do
    resources :lessons
  end
end
