class CreateAssocies < ActiveRecord::Migration
  def change
    create_table :associes do |t|
      t.string :pics
      t.string :name
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
