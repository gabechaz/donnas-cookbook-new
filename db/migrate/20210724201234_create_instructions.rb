class CreateInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :instructions do |t|
      t.integer :recipe_id
      t.string :instruction
      t.integer :next

      t.timestamps
    end
  end
end
