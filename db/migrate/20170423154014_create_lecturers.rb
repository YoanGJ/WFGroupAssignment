class CreateLecturers < ActiveRecord::Migration[5.0]
  def change
    create_table :lecturers do |t|
      t.string :name
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end
