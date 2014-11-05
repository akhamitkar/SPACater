class Order < ActiveRecord::Base
 attr_accessible :dept_id, :confroom_id, :caterer_id, :credit_card, :date_of_delivery, :food_allergies, :name, :no_of_people, :special_requests
belongs_to :depts
belongs_to :confrooms
belongs_to :caterer
belongs_to :user
end
