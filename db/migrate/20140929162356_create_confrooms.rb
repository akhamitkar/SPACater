class CreateConfrooms < ActiveRecord::Migration
  def change
    create_table :confrooms do |t|
      t.string :confroom_no

      t.timestamps
    end
  end
end
