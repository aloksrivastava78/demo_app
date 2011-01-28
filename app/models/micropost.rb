class Micropost < ActiveRecord::Base
  belongs_to :user
  validate :content, :presence => true 
  validate :user_id, :presence => true 
  validates_length_of :content,  :within => 1..140, :too_short => 'too short', :too_long => 'too long' 
  validates_numericality_of :user_id, :greater_than => 0


end
