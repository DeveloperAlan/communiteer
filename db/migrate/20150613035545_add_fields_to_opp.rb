class AddFieldsToOpp < ActiveRecord::Migration
  def change
    add_column :opps, :name, :string
    add_column :opps, :description, :text
  end
end
