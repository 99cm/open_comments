Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :comments
    resources :comment_types

    resources :orders do
      member do
        get :comments
      end

      resources :shipments do
        member do
         get :comments
        end
      end
    end
  end

  resources :orders do
    member do
      get :comments
    end

    resources :comments, only: [:new, :create] do
    end
  end
end