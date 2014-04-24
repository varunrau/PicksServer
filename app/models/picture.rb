class Picture < ActiveRecord::Base
  belongs_to :user

  def get_pictures
    Picture.where
  end
end
