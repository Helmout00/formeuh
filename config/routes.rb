Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }
  get 'home/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  #change language
  scope "(:locale)", :locale => /en|fr/ do

    get 'home' => 'home#index'
    # match 'home/ajax_twitter' => 'home#ajax_twitter'
    # match 'equipe' => 'equipe#index'
    # match 'equipe/sylvain' => 'equipe#sylvain'
    # match 'equipe/benoit' => 'equipe#benoit'
    # match 'equipe/stephane' => 'equipe#stephane'
    # match 'equipe/suemarie' => 'equipe#suemarie'
    # match 'equipe/regis' => 'equipe#regis'
    # match 'equipe/fred' => 'equipe#fred'

    # match 'equipe/callback' => 'equipe#callback'
    # match 'equipe/auth' => 'equipe#auth'
    # match 'equipe/ajax_contact' => 'equipe#ajax_contact'

    # match 'linkedinauth/callback' => 'linkedinAuth#callback'
    # match 'linkedinauth/init_auth' => 'linkedinAuth#init_auth'

    # match 'mission' => 'mission#index'
    # match 'service' => 'service#index'
    # match 'developmen' => 'developmen#index'

    # match 'contact' => 'contact#index'

    # match 'mandats' => 'mandats#index'
  end

end
