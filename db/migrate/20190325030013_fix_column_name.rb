class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :user_id, :username
  end
end
