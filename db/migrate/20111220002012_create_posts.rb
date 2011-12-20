class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :extended_content
      t.string :address
      t.float :lat
      t.float :long
      t.boolean :review

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
