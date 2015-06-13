class AddOrganisationRefToOpps < ActiveRecord::Migration
  def change
    add_reference :opps, :organisation, index: true, foreign_key: true
  end
end
