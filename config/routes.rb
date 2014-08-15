MsFixMeApp::Application.routes.draw do

  match '/' => 'home#home'
  match '/products/:url_segment' => 'products#show'
  match '/categories/:url_segment' => 'categories#show'

  namespace :administration do
    match '/' => 'home#home'
    resources :categories do
      member do
        post :archive
        post :publish
        post :remove
        post :unarchive
        post :undelete
      end
    end

    resources :products do
      member do
        post :archive
        post :publish
        post :remove
        post :unarchive
        post :undelete
      end
    end

    resources :variants
  end
end
