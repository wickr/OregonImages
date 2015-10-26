class Location < ActiveRecord::Base
  validates :title, presence: true;
end
