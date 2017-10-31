class CreateFavoriteMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_movies do |t|

      t.references :user, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
