class CreateUserRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_ratings do |t|
      t.date :date
      t.integer :target_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
