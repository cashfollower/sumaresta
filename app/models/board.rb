class Board < ActiveRecord::Base
  has_many :user_boards, :dependent => :destroy
  has_many :users, :through => :user_boards
  
  validates :name, :amount, :presence => true
  validates :amount, :numericality => true
  
  attr_accessible :name, :amount
end
