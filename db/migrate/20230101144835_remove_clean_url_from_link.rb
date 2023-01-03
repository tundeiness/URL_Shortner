class RemoveCleanUrlFromLink < ActiveRecord::Migration[7.0]
  def change
    remove_column :links, :clean_url, :string
  end
end
