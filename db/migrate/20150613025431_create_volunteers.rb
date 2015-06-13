class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :country
      t.string :image

      t.timestamps null: false
    end
  end
end
