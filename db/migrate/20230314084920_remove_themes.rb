class RemoveThemes < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :theme
  end
end
