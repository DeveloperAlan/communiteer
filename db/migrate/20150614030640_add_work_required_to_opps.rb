class AddWorkRequiredToOpps < ActiveRecord::Migration
  def change
    add_column :opps, :work_required, :string
  end
end
