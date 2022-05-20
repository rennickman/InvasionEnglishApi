Rails.application.routes.draw do
    # Home Page
    root 'pages#home'

    use_doorkeeper

    # Devise User Routes
    devise_for :users

    # Sentence Transformations Routes
    resources :sentence_transformations

    # Draw Api Routes
    draw :api
end
