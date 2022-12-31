class AddColumnOriginalUrlToUrl < ActiveRecord::Migration[7.0]
  def change
    add_column :urls, :original_url, :string
  end
end
