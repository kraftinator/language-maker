# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## Helper methods
def self.add_row( o, num )
  o.id = num
  o.save
end

## Destroy previous seeds
NaturalLanguage.destroy_all
NaturalLanguageFamily.destroy_all
WordType.destroy_all

## Create Word Types
puts "Create word types"
i = 0
add_row( WordType.new( :name => "noun", ), i+=1 )
add_row( WordType.new( :name => "verb", ), i+=1 )
add_row( WordType.new( :name => "adjective", ), i+=1 )
add_row( WordType.new( :name => "adverb", ), i+=1 )
add_row( WordType.new( :name => "pronoun", ), i+=1 )
add_row( WordType.new( :name => "preposition", ), i+=1 )
add_row( WordType.new( :name => "conjunction", ), i+=1 )
add_row( WordType.new( :name => "determiner", ), i+=1 )
add_row( WordType.new( :name => "numeral", ), i+=1 )

## Create Natural Language Families
puts "Creating natural language families"
i = 0
# Afro-Asiatic
add_row( NaturalLanguageFamily.new( :name => "Afro-Asiatic", :code => "afa", :parent => nil, :url => "https://en.wikipedia.org/wiki/Afroasiatic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Semitic", :code => "sem", :parent => NaturalLanguageFamily.where( name: "Afro-Asiatic").first, :url => "https://en.wikipedia.org/wiki/Semitic_languages"), i+=1 )
# Austro-Asiatic
add_row( NaturalLanguageFamily.new( :name => "Austro-Asiatic", :code => "aav", :parent => nil, :url => "https://en.wikipedia.org/wiki/Austroasiatic_languages"), i+=1 )
# Austronesian
add_row( NaturalLanguageFamily.new( :name => "Austronesian", :code => "map", :parent => nil, :url => "https://en.wikipedia.org/wiki/Austronesian_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Malayo-Polynesian", :code => "poz", :parent => NaturalLanguageFamily.where( name: "Austronesian" ).first, :url => "https://en.wikipedia.org/wiki/Malayo-Polynesian_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Oceanic", :code => nil, :parent => NaturalLanguageFamily.where( name: "Malayo-Polynesian" ).first, :url => "https://en.wikipedia.org/wiki/Oceanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Philippine", :code => "phi", :parent => NaturalLanguageFamily.where( name: "Malayo-Polynesian" ).first, :url => "https://en.wikipedia.org/wiki/Philippine_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Malayan", :code => "ms", :parent => NaturalLanguageFamily.where( name: "Malayo-Polynesian" ).first, :url => "https://en.wikipedia.org/wiki/Malayan_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "East Barito", :code => nil, :parent => NaturalLanguageFamily.where( name: "Malayo-Polynesian" ).first, :url => "https://en.wikipedia.org/wiki/East_Barito_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Polynesian", :code => nil, :parent => NaturalLanguageFamily.where( name: "Oceanic" ).first, :url => "https://en.wikipedia.org/wiki/Polynesian_languages"), i+=1 )
# Hmong–Mien
add_row( NaturalLanguageFamily.new( :name => "Hmong-Mien", :code => "hmx", :parent => nil, :url => "https://en.wikipedia.org/wiki/Hmong%E2%80%93Mien_languages"), i+=1 )
# Indo-European
add_row( NaturalLanguageFamily.new( :name => "Indo-European", :code => "ine", :parent => nil, :url => "https://en.wikipedia.org/wiki/Indo-European_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Germanic", :code => "gem", :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Germanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "West Germanic", :code => "gmw", :parent => NaturalLanguageFamily.where( name: "Germanic" ).first, :url => "https://en.wikipedia.org/wiki/West_Germanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "North Germanic", :code => "gmq", :parent => NaturalLanguageFamily.where( name: "Germanic" ).first, :url => "https://en.wikipedia.org/wiki/North_Germanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Balto-Slavic", :code => nil, :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Balto-Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Baltic", :code => "bat", :parent => NaturalLanguageFamily.where( name: "Balto-Slavic" ).first, :url => "https://en.wikipedia.org/wiki/Baltic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Slavic", :code => "sla", :parent => NaturalLanguageFamily.where( name: "Balto-Slavic" ).first, :url => "https://en.wikipedia.org/wiki/Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Italic", :code => "itc", :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Italic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Romance", :code => "roa", :parent => NaturalLanguageFamily.where( name: "Italic" ).first, :url => "https://en.wikipedia.org/wiki/Romance_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "West Slavic", :code => "zlw", :parent => NaturalLanguageFamily.where( name: "Slavic" ).first, :url => "https://en.wikipedia.org/wiki/West_Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "South Slavic", :code => "zls", :parent => NaturalLanguageFamily.where( name: "Slavic" ).first, :url => "https://en.wikipedia.org/wiki/South_Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Celtic", :code => "cel", :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Celtic_languages"), i+=1 )
# Mayan
add_row( NaturalLanguageFamily.new( :name => "Mayan", :code => "myn", :parent => nil, :url => "https://en.wikipedia.org/wiki/Mayan_languages"), i+=1 )
# Niger–Congo
add_row( NaturalLanguageFamily.new( :name => "Niger-Congo", :code => "nic", :parent => nil, :url => "https://en.wikipedia.org/wiki/Niger%E2%80%93Congo_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Bantu", :code => "bnt", :parent => NaturalLanguageFamily.where( name: "Niger-Congo" ).first, :url => "https://en.wikipedia.org/wiki/Bantu_languages"), i+=1 )
# Oto-Manguean
add_row( NaturalLanguageFamily.new( :name => "Oto-Manguean", :code => "omq", :parent => nil, :url => "https://en.wikipedia.org/wiki/Oto-Manguean_languages"), i+=1 )
# Turkic
add_row( NaturalLanguageFamily.new( :name => "Turkic", :code => "trk", :parent => nil, :url => "https://en.wikipedia.org/wiki/Turkic_languages"), i+=1 )
# Uralic
add_row( NaturalLanguageFamily.new( :name => "Uralic", :code => "urj", :parent => nil, :url => "https://en.wikipedia.org/wiki/Uralic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Finno-Ugric", :code => "fiu", :parent => NaturalLanguageFamily.where( name: "Uralic" ).first, :url => "https://en.wikipedia.org/wiki/Finno-Ugric_languages"), i+=1 )

#add_row( NaturalLanguageFamily.new( :name => "XXXXX", :code => "XX", :parent => NaturalLanguageFamily.where( name: "XXXXX" ).first, :url => "XXXXX"), i+=1 )



=begin
# Sino-Tibetan
add_row( NaturalLanguageFamily.new( :name => "Sino-Tibetan", :code => "sit", :parent => nil, :url => "https://en.wikipedia.org/wiki/Sino-Tibetan_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Chinese", :code => "zhx", :parent => NaturalLanguageFamily.where( name: "Sino-Tibetan" ), :url => "https://en.wikipedia.org/wiki/Varieties_of_Chinese"), i+=1 )
=end


## Create Natural Languages
puts "Creating natural languages"
i = 0
add_row( NaturalLanguage.new( :name => "Afrikaans", :code => "af", :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Afrikaans" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Bosnian", :code => "bs-Latn", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Bosnian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Bulgarian", :code => "bg", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Bulgarian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Catalan", :code => "ca", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Catalan_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Croatian", :code => "hr", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Croatian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Czech", :code => "cs", :natural_language_family => NaturalLanguageFamily.where( name: "West Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Czech_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Danish", :code => "da", :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Danish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Dutch", :code => "nl", :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Dutch_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "English", :code => "en", :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/English_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Estonian", :code => "et", :natural_language_family => NaturalLanguageFamily.where( name: "Finno-Ugric" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Finnic_languages" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Fijian", :code => "fj", :natural_language_family => NaturalLanguageFamily.where( name: "Oceanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Fijian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Filipino", :code => "fil", :natural_language_family => NaturalLanguageFamily.where( name: "Philippine" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Filipino_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Finnish", :code => "fi", :natural_language_family => NaturalLanguageFamily.where( name: "Finno-Ugric" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Finnish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "French", :code => "fr", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/French_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "German", :code => "de", :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/German_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Haitian Creole", :code => "ht", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Haitian_Creole" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Hmong", :code => "mww", :natural_language_family => NaturalLanguageFamily.where( name: "Hmong-Mien" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Hmong_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Hungarian", :code => "hu", :natural_language_family => NaturalLanguageFamily.where( name: "Finno-Ugric" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Hungarian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Indonesian", :code => "id", :natural_language_family => NaturalLanguageFamily.where( name: "Malayan" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Indonesian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Italian", :code => "it", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Italian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Swahili", :code => "sw", :natural_language_family => NaturalLanguageFamily.where( name: "Bantu" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Swahili_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Latvian", :code => "lv", :natural_language_family => NaturalLanguageFamily.where( name: "Baltic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Latvian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Lithuanian", :code => "lt", :natural_language_family => NaturalLanguageFamily.where( name: "Baltic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Lithuanian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Malagasy", :code => "mg", :natural_language_family => NaturalLanguageFamily.where( name: "East Barito" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Malagasy_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Malay", :code => "ms", :natural_language_family => NaturalLanguageFamily.where( name: "Malayan" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Malay_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Maltese", :code => "mt", :natural_language_family => NaturalLanguageFamily.where( name: "Semitic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Maltese_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Yucatec Maya", :code => "yua", :natural_language_family => NaturalLanguageFamily.where( name: "Mayan" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Yucatec_Maya_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Norwegian", :code => "no", :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Norwegian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Otomi", :code => "otq", :natural_language_family => NaturalLanguageFamily.where( name: "Oto-Manguean" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Otomi_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Polish", :code => "pl", :natural_language_family => NaturalLanguageFamily.where( name: "West Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Polish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Portuguese", :code => "pt", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Portuguese_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Romanian", :code => "ro", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Romanian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Samoan", :code => "sm", :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Samoan_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Serbian", :code => "sr-Latn", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Serbian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Slovak", :code => "sk", :natural_language_family => NaturalLanguageFamily.where( name: "West Slovak" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Slovak_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Slovenian", :code => "sl", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Slovene_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Spanish", :code => "es", :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Spanish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Swedish", :code => "sv", :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Swedish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Tahitian", :code => "ty", :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Tahitian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Tongan", :code => "to", :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Tongan_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Turkish", :code => "tr", :natural_language_family => NaturalLanguageFamily.where( name: "Turkic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Turkish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Vietnamese", :code => "vi", :natural_language_family => NaturalLanguageFamily.where( name: "Austro-Asiatic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Vietnamese_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Welsh", :code => "cy", :natural_language_family => NaturalLanguageFamily.where( name: "Celtic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Welsh_language" ), i+=1 )

#add_row( NaturalLanguage.new( :name => "XXXXX", :code => "XX", :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, :active => true, :url => "XXXXX" ), i+=1 )

