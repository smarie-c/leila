class CreateSpecialites < ActiveRecord::Migration
  def change
    create_table :specialites do |t|
      t.text :contenu, null: false
      t.text :contenuen, null: false


      t.timestamps
    end
  end
end
