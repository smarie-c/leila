class CreateHonoraires < ActiveRecord::Migration
  def change
    create_table :honoraires do |t|
      t.text :texte1

      t.timestamps
    end
  end
end
