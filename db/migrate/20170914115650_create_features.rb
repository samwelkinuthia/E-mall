class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :name
      t.string :description
      t.string :featureimage
      t.belongs_to :mall, foreign_key: true

      t.timestamps
    end
  end
end
