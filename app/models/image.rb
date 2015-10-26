class Image < ActiveRecord::Base
  belongs_to :culturalproperty
  validates :title, presence: true
  has_attached_file :picture, styles: { medium: "600x600>", thumb: "200x200>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
