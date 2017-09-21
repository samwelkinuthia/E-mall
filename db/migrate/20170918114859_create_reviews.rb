class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.belongs_to :mall, foreign_Key = true

      t.timestamps
    end
  end
end
