class User < ActiveRecord::Base
  has_many :views
  has_many :pictures, through: :views, foreign_key: "facebook_id"

  def recommended_pictures
    target = self.pictures
    Picture.order(beauty_score: :desc).where('id != ?', target).limit(10)
  end

  def to_json
    {
      name: name,
      facebook_id: facebook_id,
      id: id
    }
  end
end
