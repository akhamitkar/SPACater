class CreateCaterers < ActiveRecord::Migration
  def change
    create_table :caterers do |t|
      t.string :caterer_name

      t.timestamps
    end
  end
end
