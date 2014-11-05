class CreateConferencerms < ActiveRecord::Migration
  def change
    create_table :conferencerms do |t|
      t.integer :number

      t.timestamps
    end
  end
end
