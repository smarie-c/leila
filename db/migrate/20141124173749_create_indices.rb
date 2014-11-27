class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.text :texte1, null: false, default: ""
      t.text :texte2, null: false, default: ""
      t.text :texte3, null: false, default: ""
      t.text :texte4, null: false, default: ""
      t.text :texte5, null: false, default: ""
      t.text :texte6, null: false, default: ""
      t.text :texte7, null: false, default: ""
      t.text :texte8, null: false, default: ""
      t.text :texte9, null: false, default: ""
      t.text :texte10, null: false, default: ""
      t.text :texte11, null: false, default: ""
      t.text :texte1en, null: false, default: ""
      t.text :texte2en, null: false, default: ""
      t.text :texte3en, null: false, default: ""
      t.text :texte4en, null: false, default: ""
      t.text :texte5en, null: false, default: ""
      t.text :texte6en, null: false, default: ""
      t.text :texte7en, null: false, default: ""
      t.text :texte8en, null: false, default: ""
      t.text :texte9en, null: false, default: ""
      t.text :texte10en, null: false, default: ""
      t.text :texte11en, null: false, default: ""

      t.timestamps
    end
  end
end
