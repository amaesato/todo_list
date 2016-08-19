class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :item_name, null: false
      t.string :note
      t.boolean :completed, default: false
      t.string :priority
      t.belongs_to :list

      t.timestamps
    end
  end
end
