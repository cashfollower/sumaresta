class BoardsController < ApplicationController
  def show
    @board = current_user.boards.where(:id => params[:id]).first
  end
  
  def new
    @board = Board.new
    @user = current_user
  end
  
  def create
    @board = Board.new(params[:board])
    
    if @board.save
      current_user.boards << @board
      redirect_to user_path, :flash => {:notice => I18n.t("general.success.created", :model => Board.model_name.human)}
    else
      render :action => :new
    end
  end
end
