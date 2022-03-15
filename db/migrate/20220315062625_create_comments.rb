class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :comment_id, index: true, auto_increment: true
      t.integer :user_id
      t.string :text
      t.timestamps
    end
  end
end
