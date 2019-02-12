class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :body
      t.integer :npc_id

      t.timestamps
    end
  end
end
