class IntermediateTable < ActiveRecord::Migration[5.1]
  def change
  	create_table :optatives_users, id: false do |t|
      t.belongs_to :optative, index: true
      t.belongs_to :user, index: true
    end
  end
end
