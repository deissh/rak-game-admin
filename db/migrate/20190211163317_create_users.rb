class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :nickname
      t.integer :points
      t.integer :quest_count

      t.timestamps
    end
  end
end
