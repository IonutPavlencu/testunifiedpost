class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :cemail
      t.string :county
      t.string :city

      t.timestamps
    end
  end
end
