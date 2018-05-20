class AddCollageIdToExperiments < ActiveRecord::Migration[5.2]
  def change
    add_column :experiments, :collage_id, :integer
  end
end
