class Item < ApplicationRecord
  belongs_to :user

  default_scope { order(created_at: :asc) }

  # while this method will work, think about being more flexible (same as partial). Add hours/min/secs. think about how to do this. 
  def days_left
    7 - (DateTime.now.to_date - created_at.to_date).to_i
  end
end
