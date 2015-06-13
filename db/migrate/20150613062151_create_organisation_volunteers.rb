class CreateOrganisationVolunteers < ActiveRecord::Migration
  def change
    create_table :organisation_volunteers do |t|

      t.timestamps null: false
    end
  end
end
