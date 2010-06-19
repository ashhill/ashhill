class AddLocationAndNameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :fullname, :string
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :postal_code, :string
    add_column :users, :home_number, :string
    add_column :users, :cell_number, :string
  end

  def self.down
    remove_column :users, :fullname
    remove_column :users, :street
    remove_column :users, :city
    remove_column :users, :country
    remove_column :users, :postal_code
    remove_column :users, :home_number
    remove_column :users, :cell_number
  end
end