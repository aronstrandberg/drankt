class RemoveCountryFromBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :country, :string
  end
end
