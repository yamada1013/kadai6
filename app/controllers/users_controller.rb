class UsersController < ApplicationController

  PER_PAGE = 20

  def index
    #@users = User.limit(20)
    #@users = User.page(params[:page]).per(PER_PAGE)
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(PER_PAGE)
  end
end
