class CreateSpecialites < ActiveRecord::Migration
  def change
    create_table :specialites do |t|
      t.text :texte1, null: false
      t.text :texte1en, null: false


      t.timestamps
    end
  end
end
