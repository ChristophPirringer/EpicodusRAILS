Rails.application.routes.draw do
  root 'sections#index'

  resources :sections do
    resources :feedbacks
    resources :lessons
  end
end
