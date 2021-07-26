class UsersController < ApplicationController
  def index
    @articles = Article.all
  end
end
