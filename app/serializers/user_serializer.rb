class UserSerializer < ActiveModel::Serializer
  has_many :notes

  def initialize(user_obj)
    @user = user_obj
  end

  def to_serialized_json
    @user.to_json(:include => {
      :notes => {include: [tags: {only: [:id, :content]}], :except => [:user_id, :updated_at]}
    },
    :except => [:created_at, :updated_at])
  end
end
