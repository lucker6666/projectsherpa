class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title, :null=> false
      t.text :body
      t.integer :todo_list_item_id
      t.integer :parent_id
      t.integer :user_id, :null => false
      t.integer :todo_list_id
      t.integer :project_id
      t.integer :file_id
      t.integer :event_id

      t.timestamps
    end

    add_index :comments, :todo_list_item_id
    add_index :comments, :parent_id
    add_index :comments, :user_id
    add_index :comments, :todo_list_id
    add_index :comments, :project_id
    add_index :comments, :file_id
    add_index :comments, :event_id
  end
end
