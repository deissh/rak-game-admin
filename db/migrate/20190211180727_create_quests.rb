class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.integer :npc_id
      t.integer :sequence
      t.text :body
      t.text :answer1
      t.text :answer2

      t.timestamps
    end
  end
end
