class Dept < ActiveRecord::Base
  attr_accessible :dept_name
  has_many :orders
end
