class Beer < ActiveRecord::Base
  belongs_to :brewery
  def self.random_beer
    Beer.order("RANDOM()").limit(1).first
  end
end
