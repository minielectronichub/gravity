class AddBranchIdToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :branch_id, :integer
  end
end
