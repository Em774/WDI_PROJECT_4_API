Rails.application.routes.draw do
  scope :api do
    resources :watchlists
    resources :reviews
    resources :movies
    resources :users
    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
    get "/getmovies/:query", to: "movies#get_movies"
    get "/getmovies/b/:movie_api_id", to: "movies#find_movie_by_api_id"
  end
end
