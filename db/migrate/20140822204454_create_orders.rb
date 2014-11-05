class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :department
      t.datetime :delivery_date
      t.string :conference_room
      t.integer :no_of_people
      t.string :cater
      t.string :food_allergy
      t.text :special_requests
      t.string :credit_card

      t.timestamps
    end
  end
end
