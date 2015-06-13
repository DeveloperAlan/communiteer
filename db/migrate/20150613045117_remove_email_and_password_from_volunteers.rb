class RemoveEmailAndPasswordFromVolunteers < ActiveRecord::Migration
  def change
    remove_column :volunteers, :email, :string
    remove_column :volunteers, :password, :string
  end
end
