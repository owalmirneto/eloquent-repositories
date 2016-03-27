Rails.application.routes.draw do
  root 'home#index'
  get '/:username', to: 'home#index'
end
