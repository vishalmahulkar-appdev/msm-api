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
    #answer = {:movie => m, :cast => answer}
    render({ :plain => answer.to_json })
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

  def delete_movie
    m = Movie.where( {:id => params.fetch(:id) }).at(0)
    cb = Movie.count
    m.destroy
    ca = Movie.count
    answer = {:count_before => cb, :count_after => ca, :deleted_movie => m}

    render({ :plain => answer.to_json })
  end

  def delete_actor
    a = Actor.where( {:id => params.fetch(:id) }).at(0)
    cb = Actor.count
    a.destroy
    ca = Actor.count
    answer = {:count_before => cb, :count_after => ca, :deleted_actor => a}

    render({ :plain => answer.to_json })
  end

  def delete_director
    d = Director.where( {:id => params.fetch(:id) }).at(0)
    cb = Director.count
    d.destroy
    ca = Director.count
    answer = {:count_before => cb, :count_after => ca, :deleted_director => d}

    render({ :plain => answer.to_json })
  end

  def delete_character
    c = Character.where( {:id => params.fetch(:id) }).at(0)
    cb = Character.count
    c.destroy
    ca = Character.count
    answer = {:count_before => cb, :count_after => ca, :deleted_character => c}

    render({ :plain => answer.to_json })
  end

end
