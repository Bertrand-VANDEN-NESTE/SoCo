class AddRatingToEventRatings < ActiveRecord::Migration[7.0]
  def change
    add_column :event_ratings, :rating, :integer
  end
end
