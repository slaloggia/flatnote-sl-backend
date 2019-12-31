class TagSerializer < ActiveModel::Serializer
  has_many :notes, through: :note_tags
end
