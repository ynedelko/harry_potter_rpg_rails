class Area < ActiveRecord::Base
  has_many :locations, dependent: :destroy
end
