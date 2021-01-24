class Post < ApplicationRecord
  validates :title, :body, presence: true
  belongs_to :user
  attachment :post_image

  def self.search(keyword)
		where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
	end
end