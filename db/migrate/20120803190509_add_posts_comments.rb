class AddPostsComments < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.text :content, :null => false
    end
    
    create_table :comments do |t|
      t.integer :post_id, :null => false
      t.text :content, :null => false
    end
  end

  def down
    remove_table :posts
    remove_table :comments
  end
end
