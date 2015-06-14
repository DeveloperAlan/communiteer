class CreateOppSkills < ActiveRecord::Migration
  def change
    create_table :opp_skills do |t|
      t.references :opp, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
