class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /movies
  def index
    @movies = Movie.all

    render json: @movies
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = Movie.find_or_initialize_by(movie_api_id: movie_params[:movie_api_id])

    if @movie.new_record?
      @movie = Movie.new(movie_params)
      if @movie.save
        render json: @movie, status: :created, location: @movie
      else
        render json: @movie.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  def get_movies
    response = HTTParty.get("https://api.themoviedb.org/3/search/movie?api_key=8d027704c57524153a0af2b38415ac45&query=#{params["query"]}")
    results = JSON.parse(response.body)['results']
    render json: results, status: :ok
  end

  def find_movie_by_api_id
    # @movie = Movie.where(movie_api_id: params["movie_api_id"]).first
    @movie = Movie.find_by_movie_api_id(params["movie_api_id"])
    render json: @movie
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:title, :image, :year, :genre, :rating, :popularity, :video, :movie_api_id)
    end
end
