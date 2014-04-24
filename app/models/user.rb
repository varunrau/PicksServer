class User < ActiveRecord::Base
  has_many :pictures

  def to_json
    {
      name: name,
      facebook_id: facebook_id,
      id: id
    }
  end


end
