class Article < ApplicationRecord
  validates :title, presence: true, length: { in: 3..140 }
  validates :text, presence: true, length: { in: 3..4000 }
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
