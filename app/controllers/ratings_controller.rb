class RatingsController < ApplicationController
  before_action :logged_in_user, only: [:create, :index]

  def index
    @rated_movies = current_user.rated_movies.paginate(page: params[:page])
  end

  def create
    @movie = Movie.find(params[:movie_id])
    current_user.ratings.create(rate: params[:rate], movie_id: params[:movie_id])
    respond_to do |format|
      format.js 
    end
  end
end
