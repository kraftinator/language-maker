class ConstructedLanguagesController < ApplicationController
  
  before_action :set_constructed_language, only: [:show, :edit, :update, :destroy]
  
  def index
    @constructed_languages = ConstructedLanguage.all.order( "name" )
  end

  def show
  end

  def new
    @constructed_language = ConstructedLanguage.new
  end
  
  def create
    @constructed_language = ConstructedLanguage.new( constructed_language_params )
    @constructed_language.save
    redirect_to constructed_language_path( @constructed_language )
  end

  def edit
  end
  
  def update
    @constructed_language.update( constructed_language_params )
    redirect_to constructed_language_path
  end
  
  def destroy
    @constructed_language.destroy
    redirect_to constructed_languages_path
  end
  
  private
  
  def constructed_language_params
    params.require( :constructed_language ).permit( :name )
  end
  
  def set_constructed_language
    @constructed_language = ConstructedLanguage.find( params[:id] )
  end
  
end
