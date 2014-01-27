class Post < ActiveRecord::Base
  has_many :votes

  def points
    votes.upvotes.count - votes.downvotes.count
  end
end
