class Vote < ActiveRecord::Base
  belongs_to :post
  scope :upvotes, -> { where(up: true) }
  scope :downvotes, -> { where(up: false) }
  # scope :recent, -> { where('created_at < ?', 3.days.ago) }
end
