class CreateMallAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :mall_attachments do |t|
      t.integer :mall_id
      t.string :avatar

      t.timestamps
    end
  end
end
