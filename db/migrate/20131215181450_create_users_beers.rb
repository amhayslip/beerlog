class CreateUsersBeers < ActiveRecord::Migration
  def change
    create_table :users_beers do |t|
      t.references :beer, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
