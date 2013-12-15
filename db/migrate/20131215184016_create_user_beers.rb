class CreateUserBeers < ActiveRecord::Migration
  def change
    create_table :user_beers do |t|
      t.references :beer, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
