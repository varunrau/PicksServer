class Picture < ActiveRecord::Base
  has_many :users, through: :views

  def collection_to_json(pictures)
    pictures.collect do |pic|
      pic.to_json
    end
  end

  def to_json
    {
      image: image,
      facebook_id: facebook_id
    }
  end
end
