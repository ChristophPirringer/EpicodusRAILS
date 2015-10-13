class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
        t.column :name, :string
        t.column , :integer
        t.column :section_id, :integer
        t.column :lesson_content, :string

        t.timestamps
    end
  end
end
