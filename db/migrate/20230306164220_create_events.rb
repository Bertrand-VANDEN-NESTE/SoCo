class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :theme
      t.date :date
      t.string :location
      t.text :description
      t.integer :capacity
      t.string :status
      t.string :tricount
      t.string :password
      t.references :user, null: false, foreign_key: true
      t.references :chatroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
