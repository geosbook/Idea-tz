class CreateIdeaposts < ActiveRecord::Migration
  def change
    create_table :ideaposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :ideaposts, [:user_id, :created_at]
  end
end
