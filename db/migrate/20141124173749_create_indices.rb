class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.string :texte1
      t.string :texte2
      t.string :texte3
      t.string :texte4

      t.timestamps
    end
  end
end
