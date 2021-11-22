class CreateKids < ActiveRecord::Migration[6.1]
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
