class CreateOpps < ActiveRecord::Migration
  def change
    create_table :opps do |t|

      t.timestamps null: false
    end
  end
end
