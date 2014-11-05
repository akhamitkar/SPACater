class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.string :deptname

      t.timestamps
    end
  end
end
