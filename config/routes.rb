Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "vehicles#index"


  resource :vehicles do
    collection { post :import }
    collection { get  :download_csv }
  end
end
