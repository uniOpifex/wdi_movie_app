class AddOmbdIdToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :omdb_id, :string

  end
end
