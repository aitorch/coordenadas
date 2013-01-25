class City < ActiveRecord::Base
  attr_accessible :x, :y
  belongs_to :user
end
