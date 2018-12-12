class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.date :start_date
      t.integer :teacher_id
      t.boolean :is_open

      t.timestamps
    end
  end
end
