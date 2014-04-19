class Api::V1::UserController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find params[:facebook_id]
  end

  def pictures
    user = User.find params[:facebook_id]
  end

  def upload
    user = User.find params[:facebook_id]
  end
end
