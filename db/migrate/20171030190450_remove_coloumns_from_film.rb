class RemoveColumnsFromFilm < ActiveRecord::Migration[5.1]
  def change
    remove_column :films, :title
    remove_column :films, :genre
    remove_column :films, :synopsis
    remove_column :films, :picture
  end
end
