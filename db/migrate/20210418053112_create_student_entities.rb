class CreateStudentEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :student_entities do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :enroll_no
      t.string :course

      t.timestamps
    end
  end
end
