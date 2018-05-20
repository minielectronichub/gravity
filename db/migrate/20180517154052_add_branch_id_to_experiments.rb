class AddBranchIdToExperiments < ActiveRecord::Migration[5.2]
  def change
    add_column :experiments, :branch_id, :integer
  end
end
