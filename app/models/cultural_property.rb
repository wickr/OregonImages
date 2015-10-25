class CulturalProperty < ActiveRecord::Base
  has_many :images
  validates :title, presence: true;
end
