class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :texte1, null: false, default: ""
      t.text :texte1en, null: false, default: ""
      
      t.timestamps
    end
  end
end
