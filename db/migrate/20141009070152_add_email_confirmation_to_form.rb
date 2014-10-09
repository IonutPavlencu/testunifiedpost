class AddEmailConfirmationToForm < ActiveRecord::Migration
  def change
    add_column :forms, :email_confirmation, :string
  end
end
