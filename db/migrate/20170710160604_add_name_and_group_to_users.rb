class AddNameAndGroupToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :full_name, :string
  	add_column :users, :group, :string
  	add_column :users, :year, :string
  end
end
