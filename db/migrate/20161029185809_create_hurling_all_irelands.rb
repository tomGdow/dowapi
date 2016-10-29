class CreateHurlingAllIrelands < ActiveRecord::Migration[5.0]
  def change
    create_table :hurling_all_irelands do |t|
      t.string :county
      t.text :description
      t.integer :winfirst
      t.integer :winlast
      t.integer :wintotal

      t.timestamps
    end
  end
end
