class AddNameToUrl < ActiveRecord::Migration[7.0]
  def change
    add_column :urls, :name, :string
  end
end
