class CreateTaoisigh < ActiveRecord::Migration[5.0]
  def change
    create_table :taoisigh do |t|
      t.string :name
      t.string :party
      t.text :description
      t.text :constituency
      t.integer :taoiseach_number
      t.string :taoiseach_start
      t.string :taoiseach_finish
      t.string :taoiseach_terms
      t.string :dail_elected
      t.string :dail_leave
      t.string :date_of_birth
      t.string :date_of_death
      t.string :image_url
      t.string :url

      t.timestamps
    end
  end
end
