class Api::V1::PictureController < ApplicationController
  def index
    pictures = Picture.get_pictures
    render json: { message: "Pictures", pictures: Picture.collection_to_json(pictures) }
  end

  def rate
    user = User.find params[:facebook_id]
    picture = Picture.find image: params[:uuid]
    picture.num_ratings = picture.num_ratings + 1
    picture.num_liked = picture.num_liked + params[:liked]
    picture.beauty_score = picture.num_liked/picture.num_ratings
    picture.save
    Views.create facebook_id: user.facebook_id, picture_id: picture.image
  end
end
