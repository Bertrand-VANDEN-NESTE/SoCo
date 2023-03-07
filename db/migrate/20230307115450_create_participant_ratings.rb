class CreateParticipantRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :participant_ratings do |t|
      t.date :date
      t.string :rating
      t.references :user, null: false
      t.references :target, null: false
      t.timestamps
    end

    add_foreign_key :participant_ratings, :users, column: :user_id, primary_key: :id
    add_foreign_key :participant_ratings, :users, column: :target_id, primary_key: :id
  end
end
