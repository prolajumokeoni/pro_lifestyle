class UsersController < ApplicationController
  def index
    @articles = Article.all
  end

  def edit
    @user = User.find(params[:id])
  end
end
