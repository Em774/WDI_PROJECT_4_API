class AddMovieApiIdToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :movie_api_id, :integer
  end
end
