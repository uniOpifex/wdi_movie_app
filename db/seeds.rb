# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FavoriteMovie.destroy_all
User.destroy_all
Film.destroy_all

users = []
films = []

5.times do
  users << User.create(
      email: FFaker::Internet.email,
      password: 'qwerty',
      password_confirmation: 'qwerty'
  )
end

films << Film.create(
    omdb_id: 'tt0083658'
)

films << Film.create(
    omdb_id: 'tt0076759'
)

films<< Film.create(
    omdb_id: 'tt0080684'
)

films << Film.create(
    omdb_id: 'tt0086190'
)

films << Film.create(
    omdb_id: 'tt0119081'
)

users.each do |user|
  films.each do |film|
    FavoriteMovie.create(
        user_id: user.id,
        film_id: film.id
    )
  end
end