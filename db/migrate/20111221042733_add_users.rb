class AddUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
    end
  end

  def self.down
    drop_table :users
  end
end
