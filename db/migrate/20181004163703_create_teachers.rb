class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :time_in
      t.string :time_out
      t.string :clock_type

      t.timestamps
    end
  end
end
