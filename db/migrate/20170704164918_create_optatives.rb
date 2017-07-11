class CreateOptatives < ActiveRecord::Migration[5.1]
  def change
    create_table :optatives do |t|
      t.string :title
      t.text :description
      t.string :professor
      t.integer :duration
      t.text :schedule
      t.integer :year
      t.string :program
      t.integer :enrollment
      
      t.timestamps
    end
  end
end
