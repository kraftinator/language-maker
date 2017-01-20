class WordsController < ApplicationController
  
  before_action :set_word, only: [:show, :edit, :update, :destroy, :import]
  before_action :load_word_attributes, only: [:new, :edit]

  def index
    @words = Word.all.order( "text" )
  end

  def show
  end

  def new
    @word = Word.new( 
        natural_language: NaturalLanguage.find_by( name: "English" ), 
        word_type: WordType.find_by( name: "noun" ) 
    )
  end
  
  def create
    @word = Word.new( word_params )
    if @word.save
      redirect_to word_path( @word )
    else
      flash.now[:alert] = @word.errors.full_messages.to_sentence
      load_word_attributes
      render :new
    end
  end

  def edit
  end
  
  def update
    if @word.update( word_params )
      redirect_to word_path( @word )
    else
      flash.now[:alert] = @word.errors.full_messages.to_sentence
      load_word_attributes
      render :edit
    end
  end
  
  def destroy
    @word.destroy
    redirect_to words_path
  end
  
  def import
    
    ## Get client
    client = BingTranslator.new( ENV['BING_TRANSLATOR_CLIENT_ID'], ENV['BING_TRANSLATOR_SECRET'], 
        false, ENV['BING_TRANSLATOR_ACCOUNT_KEY'] )

    NaturalLanguage.where( active: true ).each do |language|
      ## Translate word
      result = client.translate( @word.text, :from => @word.natural_language.code, :to => language.code )
      ## Show output
      puts "#{language.name}: #{result}"
      ## Do not duplicate
      nw  = NaturalWord.where( word: @word, natural_language: language )
      next unless nw.empty?
      ## Create new natural word
      NaturalWord.create( word: @word, natural_language: language, original_text: result.downcase, text: I18n.transliterate( result ).downcase )
    end

    redirect_to word_path( @word )
    
  end
  
  private
  
  def word_params
    params.require( :word ).permit( :text, :natural_language_id, :word_type_id )
  end
  
  def set_word
    @word = Word.find( params[:id] )
  end
  
  def load_word_attributes
    @natural_languages = NaturalLanguage.all.order( "name" )
    @word_types = WordType.all.order( "name" )
  end
  
end
