class ChangeTimeInSlots < ActiveRecord::Migration[6.1]
  def change
    change_column :slots, :time, :string
  end
end
