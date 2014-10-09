class AddStateIdToForm < ActiveRecord::Migration
  def change
    add_column :forms, :State_id, :string
  end
end
