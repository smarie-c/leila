class CreateIndices < ActiveRecord::Migration
  def change
    create_table :indices do |t|
      t.text :firstname, null: false
      t.text :name, null: false
      t.text :street, null: false
      t.text :cp, null: false
      t.text :city, null: false
      t.text :phone, null: false
      t.text :fax, null: false
      t.text :mobile, null: false
      t.text :titre1, null: false
      t.text :contenu1, null: false
      t.text :titre2, null: false
      t.text :contenu2, null: false
      t.text :titre3, null: false
      t.text :contenu3, null: false
      t.text :titre4, null: false
      t.text :contenu4, null: false
      t.text :titre5, null: false
      t.text :contenu5, null: false
      t.text :firstnameen, null: false
      t.text :nameen, null: false
      t.text :streeten, null: false
      t.text :cpen, null: false
      t.text :cityen, null: false
      t.text :phoneen, null: false
      t.text :faxen, null: false
      t.text :mobileen, null: false
      t.text :titre1en, null: false
      t.text :contenu1en, null: false
      t.text :titre2en, null: false
      t.text :contenu2en, null: false
      t.text :titre3en, null: false
      t.text :contenu3en, null: false
      t.text :titre4en, null: false
      t.text :contenu4en, null: false
      t.text :titre5en, null: false
      t.text :contenu5en, null: false

      t.timestamps
    end
  end
end
