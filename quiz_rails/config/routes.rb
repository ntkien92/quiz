Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/', controllers: {
    confirmations:      'api/v1/overrides/confirmations',
    passwords:          'api/v1/overrides/passwords',
    registrations:      'api/v1/overrides/registrations',
    sessions:           'api/v1/overrides/sessions',
  }
  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
