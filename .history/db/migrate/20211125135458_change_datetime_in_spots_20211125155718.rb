class ChangeDatetimeInSpots < ActiveRecord::Migration[6.1]
  def change
    change_column :slots, :time, :text
  end
end
