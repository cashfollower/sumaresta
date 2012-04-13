class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :email, :password
  
  devise :database_authenticatable, :timeoutable
end
