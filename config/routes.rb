Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }
  get 'home/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  #change language
  get 'language/:lang', to: "application#change_language", as: "change_lang"

end
