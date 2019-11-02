Rails.application.routes.draw do

  #Static
  match("/directors/youngest",{:controller => "application", :action => "youngest_director", :via => "get"})
  match("/directors/eldest",{:controller => "application", :action => "eldest_director", :via => "get"})
  match("/movies/last_decade",{:controller => "application", :action => "last_decade_movies", :via => "get"})
  match("/movies/short",{:controller => "application", :action => "short_movies", :via => "get"})
  match("/movies/long",{:controller => "application", :action => "long_movies", :via => "get"})

  #Dynamic
  match("/directors/:director_id/filmography", { :controller => "application", :action => "director_filmography", :via => "get" })
  match("/movies/:movie_id/director", { :controller => "application", :action => "movie_director", :via => "get" })
  match("/movies/:movie_id/characters", { :controller => "application", :action => "movie_characters", :via => "get" })
  match("/movies/:movie_id/cast", { :controller => "application", :action => "movie_cast", :via => "get" })
  match("/actors/:actor_id/characters", { :controller => "application", :action => "actor_characters", :via => "get" })
  match("/actors/:actor_id/filmography", { :controller => "application", :action => "actor_filmography", :via => "get" })

  #Delete
  match("/delete_movie/:id", { :controller => "application", :action => "delete_movie", :via => "get" })
  match("/delete_director/:id", { :controller => "application", :action => "delete_director", :via => "get" })
  match("/delete_actor/:id", { :controller => "application", :action => "delete_actor", :via => "get" })
  match("/delete_character/:id", { :controller => "application", :action => "delete_character", :via => "get" })

  #Create
  match("/insert_director_record", { :controller => "application", :action => "insert_director", :via => "get" })
  match("/insert_movie_record", { :controller => "application", :action => "insert_movie", :via => "get" })
  match("/insert_actor_record", { :controller => "application", :action => "insert_actor", :via => "get" })
  match("/insert_character_record", { :controller => "application", :action => "insert_character", :via => "get" })


  # ================================================
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
