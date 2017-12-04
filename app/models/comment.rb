class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 2..400 }
  belongs_to :article
end
