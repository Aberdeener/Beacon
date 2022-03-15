class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.integer :issues_id, index: true, auto_increment: true
      t.string :title
      t.text :description
      t.integer :created_by
      t.belongs_to :project, foreign_key: true
      t.timestamps
    end
  end
end
