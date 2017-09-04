User.destroy_all
Movie.destroy_all
Review.destroy_all
Watchlist.destroy_all

u1 = User.create!(firstname: "Emilie", lastname: "Dussaix", username: "Em774", email: "emilie@ga.co", image: "https://avatars0.githubusercontent.com/u/28303536?v=4&s=460")

m1 = Movie.create!(title: "Big Fish")

r1 = Review.create(title: "Great movie", note: "Must watch!", movie_id: m1.id, user_id: u1.id)
