class AddCountryIdToForm < ActiveRecord::Migration
  def change
    add_column :forms, :country_id, :string
  end
end
