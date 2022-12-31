class AddColumnShortUrlToUrl < ActiveRecord::Migration[7.0]
  def change
    add_column :urls, :short_url, :string
  end
end
