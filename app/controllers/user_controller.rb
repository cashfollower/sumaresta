class UserController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @boards = current_user.boards
  end
  
end