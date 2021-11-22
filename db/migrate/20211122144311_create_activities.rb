class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :location
      t.date :availability
      t.integer :duration
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
