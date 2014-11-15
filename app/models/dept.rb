class Dept < ActiveRecord::Base
  attr_accessible :dept_name,:updated_at,:created_at, :id
  has_many :orders
end
