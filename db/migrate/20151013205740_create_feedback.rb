class CreateFeedback < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.column :content, :string
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
