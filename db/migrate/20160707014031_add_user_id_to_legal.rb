class AddUserIdToLegal < ActiveRecord::Migration[5.0]
  def change
    add_column :legals, :user_id, :integer
  end
end
