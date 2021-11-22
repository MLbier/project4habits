class CreateSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :slots do |t|
      t.time :time
      t.string :day
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
