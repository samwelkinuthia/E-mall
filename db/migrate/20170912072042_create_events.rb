class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :venue
      t.string :hosted_by
      t.time :time

      t.timestamps
    end
  end
end
