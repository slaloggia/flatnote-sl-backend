class NoteSerializer

  def initialize(note_obj)
    @note = note_obj
  end

  def to_serialized_json
    @note.to_json(:include => {
      :tags => {:only => [:content]}
    })
  end
end
