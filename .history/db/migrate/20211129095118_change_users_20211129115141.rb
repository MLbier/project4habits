class ChangeUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:users, :owner, nil)
  end
end
