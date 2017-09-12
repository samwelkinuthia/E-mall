class AddMallToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :mall, foreign_key: true
  end
end
