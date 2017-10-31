class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :genre
      t.integer :release_year
      t.string :rating
      t.string :synopsis
      t.string :picture

      t.timestamps
    end
  end
end
