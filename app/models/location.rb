class Location < ActiveRecord::Base
  has_many :items
  belongs_to :area
end
