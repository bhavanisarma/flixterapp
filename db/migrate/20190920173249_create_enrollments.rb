class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
    	t.integer :member_id
    	t.integer :course_id
     	t.timestamps
    end
    add_index :enrollments, [:member_id, :course_id]
    add_index :enrollments, :course_id
  end
end
