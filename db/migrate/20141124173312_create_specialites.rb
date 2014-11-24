class CreateSpecialites < ActiveRecord::Migration
  def change
    create_table :specialites do |t|
      t.string :texte1

      t.timestamps
    end
  end
end
