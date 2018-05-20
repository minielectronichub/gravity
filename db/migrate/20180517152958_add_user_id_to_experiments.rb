class AddUserIdToExperiments < ActiveRecord::Migration[5.2]
  def change
    add_column :experiments, :user_id, :integer
  end
end
