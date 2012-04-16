class Board < ActiveRecord::Base
  has_many :user_boards, :dependent => :destroy
  has_many :users, :through => :user_boards
  
  attr_accessible :name
end
