class Location < ActiveRecord::Base
  has_many :culturalproperties
  validates :title, presence: true;
end
