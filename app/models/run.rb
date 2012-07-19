class Run < ActiveRecord::Base
  attr_accessible :description, :distance
  validates_presence_of :distance
end
