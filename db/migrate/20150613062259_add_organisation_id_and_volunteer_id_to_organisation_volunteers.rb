class AddOrganisationIdAndVolunteerIdToOrganisationVolunteers < ActiveRecord::Migration
  def change
    add_column :organisation_volunteers, :organisation_id, :Integer
    add_column :organisation_volunteers, :volunteer_id, :Integer
  end
end
