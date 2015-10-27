Rails.application.routes.draw do
  root 'main#index'

  resources :posts, only: [:create, :index, :show], defaults: { format: :json } do
    resources :comments, only: [:create, :show], defaults: { format: :json } do
      member do
        put '/upvote' => 'comments#upvote'
      end
    end

    member do
      put '/upvote' => 'posts#upvote'
    end
  end

  get '*path' => 'layouts#index'
end
