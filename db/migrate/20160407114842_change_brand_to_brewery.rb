class ChangeBrandToBrewery < ActiveRecord::Migration
  def change
    change_table :beers do |t|
      t.remove :brand
    end
    add_reference :beers, :brewery
  end
end
