class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :crn
      t.string :name
      t.text :description
      t.integer :capacity, default: 20

      t.timestamps
    end
  end
end
