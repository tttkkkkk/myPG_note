class NoteController < ApplicationController

  def new
    puts '***new***'
    puts 'note--'
    puts @note
    @note = Note.new
    puts 'note--'
    puts @note
  end

  def confirm_new
    puts '***confirm_new***'
    @note = Note.new(note_params)
    puts 'note--'
    puts @note
    render :new unless @note.valid?
  end

  def confirm
    puts '***confirm***'
    Note.destroy_all
    @note = Note.new(note_params)
    @note.save
    redirect_to action: 'home'
  end

  def create
    puts '***create***'
    puts 'note--'
    puts @note

    Note.destroy_all
    @note = Note.new(note_params)
    @note.save
    redirect_to action: 'home'
  end

  def home
    @notes = Note.all
  end


  private
  def note_params
    params.require(:note).permit(:content)
  end

end
