class Api::V1::UserController < ApplicationController
skip_before_filter :verify_authenticity_token

  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

  def new
    user = User.create facebook_id: params[:facebook_id], name: params[:name]
    render json: { message: "User created", user: user.to_json }
  end

  def show
    @user = User.find params[:facebook_id]
  end

  def pictures
    user = User.find params[:facebook_id]
    render json: { pictures: Picture.collection_to_json(user.recommended_pictures) }
  end

  def upload
    user = User.find params[:facebook_id]
    Picture.create image: params[:uuid], facebook_id: user.facebook_id
    render json: { message: "Image Uploaded!" }
  end
end
