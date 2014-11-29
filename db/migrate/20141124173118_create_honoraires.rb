class CreateHonoraires < ActiveRecord::Migration
  def change
    create_table :honoraires do |t|
      t.text :contenu, null: false
      t.text :contenuen, null: false

      t.timestamps
    end
  end
end
