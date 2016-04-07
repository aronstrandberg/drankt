class Beer < ActiveRecord::Base
  acts_as_votable
  belongs_to :brewery
  has_many :comments, as: :commentable
  def self.random_beer
    Beer.order("RANDOM()").limit(1).first
  end
end
