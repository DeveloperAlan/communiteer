class AddDueByToOpps < ActiveRecord::Migration
  def change
    add_column :opps, :due_by, :datetime
  end
end
