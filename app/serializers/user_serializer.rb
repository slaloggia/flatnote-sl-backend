class UserSerializer < ActiveModel::Serializer

  def initialize(user_obj)
    @user = user_obj
  end

  def to_serialized_json
    @user.to_json(:include => {
      :notes => {include: [tags: {only: [:content]}], :except => [:user_id, :updated_at]}
    },
    :except => [:created_at, :updated_at])
  end
end
