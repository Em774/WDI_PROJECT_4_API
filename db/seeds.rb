Review.destroy_all
Watchlist.destroy_all
Movie.destroy_all
User.destroy_all

u1 = User.create!(firstname: "Emilie", lastname: "Dussaix", username: "Em774", email: "emilie@ga.co", image: "https://avatars0.githubusercontent.com/u/28303536?v=4&s=460", password: "password")


# r1 = Review.create(title: "Great movie", note: "Must watch!", movie_id: m1.id, user_id: u1.id)



# response = HTTParty.get("https://api.themoviedb.org/3/movie/popular?api_key=8d027704c57524153a0af2b38415ac45&language=en-US&page=1")
# results = JSON.parse(response.body)['results']
#
#
# results.each do |result|
#
#   movie = Movie.new({
#     title: result["title"],
#     popularity: result["popularity"],
#     image: result["poster_path"],
#     year: result["release_date"],
#     genre: result["genre_ids"]
#     })
#
#     movie.save
#     puts "#{movie['title']} was saved."
#   end

  # response = HTTParty.get("https://api.themoviedb.org/3/movie/popular?api_key=8d027704c57524153a0af2b38415ac45&language=en-US&page=1")
  # results = JSON.parse(response.body)['results']
  #
  #
  # results.each do |result|
  #
  #   movie = Movie.new({
  #     api_id: result["id"],
  #     title: result["title"],
  #     popularity: result["popularity"],
  #     image: result["poster_path"],
  #     year: result["release_date"],
  #     genre: result["genre_ids"]
  #     })
  #
  #     movie.save
  #     puts "#{movie['title']} was saved."
  #   end
