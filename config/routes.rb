Rails.application.routes.draw do
    # Home Page
    root 'pages#home'

    # Devise User Routes
    devise_for :users

    # Sentence Transformations Routes
    resources :sentence_transformations
end
