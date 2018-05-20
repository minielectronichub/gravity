class AddSemIdToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :sem_id, :integer
  end
end
