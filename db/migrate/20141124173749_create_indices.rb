class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.text :texte1
      t.text :texte2
      t.text :texte3
      t.text :texte4
      t.text :texte5
      t.text :texte6
      t.text :texte7
      t.text :texte8
      t.text :texte9
      t.text :texte10
      t.text :texte11
      t.text :texte1en
      t.text :texte2en
      t.text :texte3en
      t.text :texte4en
      t.text :texte5en
      t.text :texte6en
      t.text :texte7en
      t.text :texte8en
      t.text :texte9en
      t.text :texte10en
      t.text :texte11en

      t.timestamps
    end
  end
end
