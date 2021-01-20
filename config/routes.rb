Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
end
