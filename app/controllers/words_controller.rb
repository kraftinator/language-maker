class WordsController < ApplicationController
  
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  
  def index
    @words = Word.all.order( "text" )
  end

  def show
  end

  def new
    @word = Word.new
    @natural_languages = NaturalLanguage.all.order( "name" )
    @default_language = NaturalLanguage.find_by( name: "English" )
    @word_types = WordType.all.order( "name" )
    @default_word_type = WordType.find_by( name: "noun" )
  end
  
  def create
    @word = Word.new( word_params )
    if @word.save
      redirect_to word_path( @word )
    else
      flash.now[:alert] = @word.errors.full_messages.to_sentence# if @user_match_preference.errors.any?
      @word = Word.new
      @natural_languages = NaturalLanguage.all.order( "name" )
      @default_language = NaturalLanguage.find_by( name: "English" )
      @word_types = WordType.all.order( "name" )
      @default_word_type = WordType.find_by( name: "noun" )
      render :action => 'new'
    end
  end

  def edit
  end
  
  def destroy
    @word.destroy
    redirect_to words_path
  end
  
  private
  
  def word_params
    params.require( :word ).permit( :text, :natural_language_id, :word_type_id )
  end
  
  def set_word
    @word = Word.find( params[:id] )
  end
  
end
