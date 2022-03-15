class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id, index: true, unique: true, auto_increment: true
      t.string :name
      t.string :email, index: {
        unique: true
      }
      t.timestamps
    end
  end
end
