class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :project_id, index: true, auto_increment: true
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
