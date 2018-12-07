class RemovePinnedFromNote < ActiveRecord::Migration[5.2]
  def change
    remove_column :notes, :pinned, :boolean
  end
end
