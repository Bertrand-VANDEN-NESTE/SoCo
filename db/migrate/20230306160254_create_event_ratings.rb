class CreateEventRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_ratings do |t|
      t.text :comment
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
