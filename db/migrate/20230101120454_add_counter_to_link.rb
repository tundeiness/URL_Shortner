class AddCounterToLink < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :counter, :integer, default: 0
  end
end
