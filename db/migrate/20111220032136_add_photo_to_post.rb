class AddPhotoToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :flickr_url, :string
    add_column :posts, :photo_url, :string
  end

  def self.down
    remove_column :posts, :flickr_url
    remove_column :posts, :photo_url
  end
end
