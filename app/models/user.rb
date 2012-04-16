class User < ActiveRecord::Base
  has_many :user_boards, :dependent => :destroy
  has_many :boards, :through => :user_boards
  
  # attr_accessible :title, :body
  attr_accessible :email, :password#, :password_confirmation
  
  devise :omniauthable, :database_authenticatable #, :timeoutable, :registerable
  
  def self.find_for_open_id(access_token, signed_in_resource=nil)
    data = access_token.info
    if user = User.where(:email => data["email"]).first
      user
    else
      User.create!(:email => data["email"], :password => Devise.friendly_token[0,20])
    end
  end
end
