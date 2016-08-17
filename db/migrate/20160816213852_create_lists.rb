class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :chore
      t.text :description
      t.integer :priority
      t.boolean :complete

      t.timestamps
    end
  end
end
