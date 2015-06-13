class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.references :volunteer, index: true, foreign_key: true
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
