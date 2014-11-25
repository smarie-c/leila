class CreateSpecialites < ActiveRecord::Migration
  def change
    create_table :specialites do |t|
      t.text :texte1
      t.text :texte1en


      t.timestamps
    end
  end
end
