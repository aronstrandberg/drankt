class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.integer :price
      t.boolean :available
      t.string :country
      t.integer :volume
      t.float :alcohol_percentage

      t.timestamps null: false
    end
  end
end
