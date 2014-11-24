class CreateHonoraires < ActiveRecord::Migration
  def change
    create_table :honoraires do |t|
      t.string :texte1

      t.timestamps
    end
  end
end
