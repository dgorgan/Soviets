class CreateSoviets < ActiveRecord::Migration
  def change
    create_table :soviets do |t|
      t.string :name
      t.string :rank
      t.string :position
      t.integer :experience
      t.text :about

      t.timestamps null: false
    end
  end
end
