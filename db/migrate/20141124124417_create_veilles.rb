class CreateVeilles < ActiveRecord::Migration
  def change
    create_table :veilles do |t|
      t.string :titre, null: false
      t.text :texte, null: false, default: ""
      t.integer :veille_type, null: false
      t.string :langue, null: false
      t.timestamps
    end
  end
end
