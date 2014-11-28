class CreateHonoraires < ActiveRecord::Migration
  def change
    create_table :honoraires do |t|
      t.text :texte1, null: false
      t.text :texte1en, null: false

      t.timestamps
    end
  end
end
