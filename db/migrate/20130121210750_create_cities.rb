class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :x
      t.integer :y
      t.timestamps
    end
  end
end
