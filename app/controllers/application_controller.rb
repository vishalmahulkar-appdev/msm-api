class ApplicationController < ActionController::Base

  def youngest_director
    answer = Director.youngest
    render({ :plain => answer.to_json })
  end

  def eldest_director
    answer = Director.eldest
    render({ :plain => answer.to_json })
  end

  def last_decade_movies
    answer = Movie.last_decade
    render({ :plain => answer.to_json })
  end

  def short_movies
    answer = Movie.short
    render({ :plain => answer.to_json })
  end

  def long_movies
    answer = Movie.long
    render({ :plain => answer.to_json })
  end

  def director_filmography
    d = Director.where( {:id => params.fetch(:director_id) }).at(0)
    answer = d.filmography
    render({ :plain => answer.to_json })
  end

  def movie_director
    m = Movie.where( {:id => params.fetch(:movie_id) }).at(0)
    answer = m.director
    render({ :plain => answer.to_json })
  end

  def movie_characters
    m = Movie.where( {:id => params.fetch(:movie_id) }).at(0)
    answer = m.characters
    render({ :plain => answer.to_json })
  end

  def movie_cast
    m = Movie.where( {:id => params.fetch(:movie_id) }).at(0)
    answer = m.cast
    newanswer = {:movie => m, :cast => answer}
    render({ :plain => newanswer.to_json })
  end

  def actor_characters
    a = Actor.where( {:id => params.fetch(:actor_id) }).at(0)
    answer = a.characters
    render({ :plain => answer.to_json })
  end

  def actor_filmography
    a = Actor.where( {:id => params.fetch(:actor_id) }).at(0)
    answer = a.filmography
    render({ :plain => answer.to_json })
  end

end
