class AddTrucsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :birth_date, :date
    add_column :users, :city, :string
    add_column :users, :phone_number, :string
    add_column :users, :hobbies, :string
    add_column :users, :username, :string
  end
end
