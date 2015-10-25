class Image < ActiveRecord::Base
  belongs_to :culturalproperty
  validates :title, presence: true

end
