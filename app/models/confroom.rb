class Confroom < ActiveRecord::Base
  attr_accessible :conf_room
  has_many :orders
end
