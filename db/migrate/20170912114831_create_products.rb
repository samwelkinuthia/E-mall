class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.belongs_to :room, foreign_key: true

      t.timestamps
    end
  end
end
