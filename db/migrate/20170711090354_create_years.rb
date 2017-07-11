class CreateYears < ActiveRecord::Migration[5.1]
  def change
    create_table :years do |t|
      t.integer :value
      t.integer :max_optatives
      t.integer :semester
      t.string :program

      t.timestamps
    end
  end
end
