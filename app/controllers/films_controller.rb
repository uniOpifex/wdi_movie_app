require 'httparty'
require 'pp'


class FilmsController < ApplicationController

  before_action :authenticate_user!

  def index
    @films = current_user.films.map do |film|
      url = "http://www.omdbapi.com/?i=#{film.omdb_id}&apikey=d31f1a94"
      response = HTTParty.get(url)
      response_body = JSON.parse(response.body)

      film.title = response_body['Title']
      film.release_year = response_body['Year']
      film.rating = response_body['Rated']
      film.image = response_body['Poster']
      film
      end
  end

  def edit

  end

  def new

  end

  def show

  end




  def destroy
    FavoriteMovie.find_by(user_id: current_user.id, film_id: @film.id).delete
    redirect_to films_url, notice: 'Movie was successfully destroyed.'
  end


end
