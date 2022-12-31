class RemoveNameFromUrls < ActiveRecord::Migration[7.0]
  def change
    remove_column :urls, :name, :string
  end
end
