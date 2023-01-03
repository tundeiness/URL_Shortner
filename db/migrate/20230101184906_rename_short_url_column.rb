class RenameShortUrlColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :links, :short_url, :slug
  end
end
