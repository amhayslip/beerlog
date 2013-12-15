class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :style
      t.string :abv
      t.string :location
      t.text :note

      t.timestamps
    end
  end
end
