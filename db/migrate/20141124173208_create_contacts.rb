class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :texte1

      t.timestamps
    end
  end
end
