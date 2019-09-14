class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.string :title
    	t.text :description
    	t.decimal :cost
    	t.integer :member_id
        
    	t.timestamps
    end
    add_index :courses, :member_id
  end
end
