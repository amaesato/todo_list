class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.date :date
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
