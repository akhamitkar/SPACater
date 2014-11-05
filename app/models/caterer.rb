class Caterer < ActiveRecord::Base
  attr_accessible :caterer_name
  has_many :orders
end
