Rails.application.routes.draw do

  match("/directors/youngest",{:controller => "application", :action => "youngest_director", :via => "get"})

  # ================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
