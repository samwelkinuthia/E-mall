class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :store, :boolean, default: false
    add_column :users, :user, :boolean, default: true
  end
end
