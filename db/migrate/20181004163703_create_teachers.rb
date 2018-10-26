class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.timestamp :time_in
      t.timestamp :time_out
      t.string :clock_type

      t.timestamps
    end
  end
end
