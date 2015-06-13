class AddDueByToOpps < ActiveRecord::Migration
  def change
    add_column :opps, :DueBy, :datetime
  end
end
