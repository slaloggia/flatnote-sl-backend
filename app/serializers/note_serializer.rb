class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :tags, :user_id
  belongs_to :user
  has_many :note_tags
  has_many :tags, through: :note_tags

#   def initialize(note_obj)
#     @note = note_obj
#   end

#   def to_serialized_json
#     @note.to_json(:include => [:tags])
#   end
end
