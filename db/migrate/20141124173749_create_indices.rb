class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.text :texte1, null: false
      t.text :texte2, null: false
      t.text :texte3, null: false
      t.text :texte4, null: false
      t.text :texte5, null: false
      t.text :fax, null: false
      t.text :mobile, null: false
      t.text :texte6, null: false
      t.text :texte7, null: false
      t.text :texte8, null: false
      t.text :texte9, null: false
      t.text :texte10, null: false
      t.text :texte11, null: false
      t.text :texte12, null: false
      t.text :texte13, null: false
      t.text :texte14, null: false
      t.text :texte15, null: false
      t.text :texte1en, null: false
      t.text :texte2en, null: false
      t.text :texte3en, null: false
      t.text :texte4en, null: false
      t.text :texte5en, null: false
      t.text :faxen, null: false
      t.text :mobileen, null: false
      t.text :texte6en, null: false
      t.text :texte7en, null: false
      t.text :texte8en, null: false
      t.text :texte9en, null: false
      t.text :texte10en, null: false
      t.text :texte11en, null: false
      t.text :texte12en, null: false
      t.text :texte13en, null: false
      t.text :texte14en, null: false
      t.text :texte15en, null: false

      t.timestamps
    end
  end
end
