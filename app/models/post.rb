class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  acts_as_votable
  has_attached_file :image, styles: {medium: "800x600#>", small: "350x250>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
