class Api::V1::PictureController < ApplicationController
  def index
    pictures = Picture.get_pictures
    render json: { message: "Pictures", pictures: Picture.collection_to_json(pictures) }
  end

  def rate
  end
end
