class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :texte1

      t.timestamps
    end
  end
end
