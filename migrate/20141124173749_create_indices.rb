class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.text :texte1
      t.text :texte2
      t.text :texte3
      t.text :texte4

      t.timestamps
    end
  end
end
