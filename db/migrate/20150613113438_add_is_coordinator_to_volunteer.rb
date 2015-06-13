class AddIsCoordinatorToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :is_coordinator, :bool
  end
end
