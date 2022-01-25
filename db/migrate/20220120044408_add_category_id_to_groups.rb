class AddCategoryIdToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :category_id, :integer
  end
end
