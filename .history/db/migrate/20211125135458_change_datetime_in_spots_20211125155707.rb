class ChangeDatetimeInSpots < ActiveRecord::Migration[6.1]
  def change
    change_column :slots, :part_number, :text
  end
end
