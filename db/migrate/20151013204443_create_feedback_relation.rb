class CreateFeedbackRelation < ActiveRecord::Migration
  def change
    create_table :feedback_relations do |t|
      t.column :content, :string
      t.column :section_id, :integer

      t.timestamps
    end
  end
end
