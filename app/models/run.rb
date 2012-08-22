class Run < ActiveRecord::Base
  attr_accessible :description, :distance, :duration, :user_id
  validates_presence_of :distance
  belongs_to :users
end
