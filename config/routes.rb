Rails.application.routes.draw do
  resources :companies do
    match '/scrape', to: 'companies#scrape', via: :post, on: :collection
  end

  root to: 'companies#index'
end