class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :st_id
      t.string :name
      t.string :gender
      t.string :program
      t.string :support
      t.string :school
      t.date :dob
      t.date :doj

      t.timestamps
    end
  end
end
