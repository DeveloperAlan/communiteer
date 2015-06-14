class CreateVolunteerSkills < ActiveRecord::Migration
  def change
    create_table :volunteer_skills do |t|
      t.references :volunteer, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
