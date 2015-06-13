class AddIsCoordinatorToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :IsCoordinator, :bool
  end
end
