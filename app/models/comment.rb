class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 2..1000 }
  belongs_to :article
end
