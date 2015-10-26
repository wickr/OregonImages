class CulturalProperty < ActiveRecord::Base
  has_many :images
  belongs_to :location
  validates :title, presence: true;
end
