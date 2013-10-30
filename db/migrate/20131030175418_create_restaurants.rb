class CreateRestaurants < ActiveRecord::Migration
  def up
    create_table :restaurants do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :restaurants
  end
end
