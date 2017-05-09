Rails.application.routes.draw do
  get 'task/show'

  get 'project/index'

  get 'project/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :listings

  root 'project#index'

  resources :project do
    resources :task, only: [:show]
  end

  devise_for  :users,
            :path => '',
            :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
            :controllers => {:omniauth_callbacks => 'omniauth_callbacks',
                             :registrations => 'registrations'
                            }
  resources :users, only: [:show]
end
