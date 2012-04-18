class UserController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @boards = current_user.boards
    redirect_to new_board_path if @boards.empty?
  end
  
end