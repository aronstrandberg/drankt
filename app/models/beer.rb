class Beer < ActiveRecord::Base
  def self.random_beer
    Beer.order("RANDOM()").limit(1).first
  end
end
