class User < ActiveRecord::Base
  include Clearance::User

  acts_as_voter
  def name
    "#{self.first_name} #{self.last_name}"
  end
end
