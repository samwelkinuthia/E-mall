class AddMallToFeatures < ActiveRecord::Migration[5.1]
  def change
    add_reference :features, :mall, foreign_key: true
  end
end
