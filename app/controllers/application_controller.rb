class ApplicationController < ActionController::Base

  def youngest_director

    youngest = Director.youngest

    render({ :plain => youngest.to_json })
  end
end
