class AddSemIdToExperiments < ActiveRecord::Migration[5.2]
  def change
    add_column :experiments, :sem_id, :integer
  end
end
