class Post < ActiveRecord::Base
  has_many :votes

  def points
    votes.where(up: true).count - votes.where(up: false).count
  end
end
