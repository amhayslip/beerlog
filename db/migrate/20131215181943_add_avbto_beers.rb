class AddAvbtoBeers < ActiveRecord::Migration
  def change
    add_column :beers, :abv, :integer
  end
end
