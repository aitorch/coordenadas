class User < ActiveRecord::Base
  attr_accessible :alianza, :name, :timezone, :alianza_id, :cities_attributes
  belongs_to :alianza
  has_many :cities
  accepts_nested_attributes_for :cities, :allow_destroy => :true,
                                :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
  
end
