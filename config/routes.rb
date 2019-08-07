Rails.application.routes.draw do
  resources :options
  resources :questions do
    resources :options
  end
  resources :questionnaires do
    resources :questions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
