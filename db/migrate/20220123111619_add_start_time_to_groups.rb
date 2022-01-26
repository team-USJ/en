class AddStartTimeToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :start_time, :datetime
  end
end
