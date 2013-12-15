class DropUsersBeers < ActiveRecord::Migration
  def change
    drop_table :users_beers
  end
end
