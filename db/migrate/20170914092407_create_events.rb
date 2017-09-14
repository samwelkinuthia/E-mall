class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :starting_date
      t.date :ending_date
      t.time :starting_time
      t.time :ending_time
      t.belongs_to :mall, foreign_key: true

      t.timestamps
    end
  end
end
