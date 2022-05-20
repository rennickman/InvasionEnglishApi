

# Api Routes
namespace :api do
    namespace :v1 do
        resources :sentence_transformations
    end
end



# Scope for Api
scope :api do
    scope :v1 do
        use_doorkeeper do
            skip_controllers :authorizations, :applications, :authorized_applications
        end
    end
end