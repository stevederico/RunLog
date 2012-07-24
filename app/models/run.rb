class Run < ActiveRecord::Base
  attr_accessible :description, :distance, :duration
  validates_presence_of :distance
end
