class CreateVeilles < ActiveRecord::Migration
  def change
    create_table :veilles do |t|
      t.string :titre
      t.text :texte

      t.timestamps
    end
  end
end
