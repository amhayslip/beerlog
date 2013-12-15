class RemoveNoteFromBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :note, :string
  end
end
