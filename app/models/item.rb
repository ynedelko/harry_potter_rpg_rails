class Item < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :location
  validates_presence_of :name
  validates_presence_of :description
end
