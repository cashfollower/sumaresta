class UserBoard < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  
  attr_accessible :board_id, :user_id
end
