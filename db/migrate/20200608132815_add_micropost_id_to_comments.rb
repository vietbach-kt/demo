class AddMicropostIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :micropost_id, :integer, index: true
  end
end
