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
  o.save!
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
add_row( NaturalLanguageFamily.new( :name => "Cushitic", :code => "cus", :parent => NaturalLanguageFamily.where( name: "Afro-Asiatic").first, :url => "https://en.wikipedia.org/wiki/Cushitic_languages"), i+=1 )
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
add_row( NaturalLanguageFamily.new( :name => "Sunda-Sulawesi", :code => nil, :parent => NaturalLanguageFamily.where( name: "Malayo-Polynesian" ).first, :url => "https://en.wikipedia.org/wiki/Sunda%E2%80%93Sulawesi_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Malayo-Sumbawan", :code => nil, :parent => NaturalLanguageFamily.where( name: "Malayo-Polynesian" ).first, :url => "https://en.wikipedia.org/wiki/Malayo-Sumbawan_languages"), i+=1 )

# Dravidian
add_row( NaturalLanguageFamily.new( :name => "Dravidian", :code => "dra", :parent => nil, :url => "https://en.wikipedia.org/wiki/Dravidian_languages"), i+=1 )
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
add_row( NaturalLanguageFamily.new( :name => "East Slavic", :code => "zle", :parent => NaturalLanguageFamily.where( name: "Slavic" ).first, :url => "https://en.wikipedia.org/wiki/East_Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Celtic", :code => "cel", :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Celtic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Indo-Iranian", :code => "iir", :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Indo-Iranian_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Indo-Aryan", :code => "inc", :parent => NaturalLanguageFamily.where( name: "Indo-Iranian" ).first, :url => "https://en.wikipedia.org/wiki/Indo-Aryan_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Iranian", :code => "ira", :parent => NaturalLanguageFamily.where( name: "Indo-Iranian" ).first, :url => "https://en.wikipedia.org/wiki/Iranian_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Hellenic", :code => "grk", :parent => NaturalLanguageFamily.where( name: "Indo-European" ).first, :url => "https://en.wikipedia.org/wiki/Hellenic_languages"), i+=1 )
# Japonic
add_row( NaturalLanguageFamily.new( :name => "Japonic", :code => "jpx", :parent => nil, :url => "https://en.wikipedia.org/wiki/Japonic_languages"), i+=1 )
# Kartvelian
add_row( NaturalLanguageFamily.new( :name => "Kartvelian", :code => "ccs", :parent => nil, :url => "https://en.wikipedia.org/wiki/Kartvelian_languages"), i+=1 )
# Koreanic
add_row( NaturalLanguageFamily.new( :name => "Koreanic", :code => nil, :parent => nil, :url => "https://en.wikipedia.org/wiki/Koreanic_languages"), i+=1 )
# Language isolate
add_row( NaturalLanguageFamily.new( :name => "Language isolate", :code => nil, :parent => nil, :url => "https://en.wikipedia.org/wiki/Language_isolate"), i+=1 )
# Mayan
add_row( NaturalLanguageFamily.new( :name => "Mayan", :code => "myn", :parent => nil, :url => "https://en.wikipedia.org/wiki/Mayan_languages"), i+=1 )
# Mongolic
add_row( NaturalLanguageFamily.new( :name => "Mongolic", :code => "xgn", :parent => nil, :url => "https://en.wikipedia.org/wiki/Mongolic_languages"), i+=1 )
# Niger–Congo
add_row( NaturalLanguageFamily.new( :name => "Niger-Congo", :code => "nic", :parent => nil, :url => "https://en.wikipedia.org/wiki/Niger%E2%80%93Congo_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Bantu", :code => "bnt", :parent => NaturalLanguageFamily.where( name: "Niger-Congo" ).first, :url => "https://en.wikipedia.org/wiki/Bantu_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Yoruboid", :code => nil, :parent => NaturalLanguageFamily.where( name: "Niger-Congo" ).first, :url => "https://en.wikipedia.org/wiki/Yoruboid_languages"), i+=1 )
# Oto-Manguean
add_row( NaturalLanguageFamily.new( :name => "Oto-Manguean", :code => "omq", :parent => nil, :url => "https://en.wikipedia.org/wiki/Oto-Manguean_languages"), i+=1 )
# Tai–Kadai
add_row( NaturalLanguageFamily.new( :name => "Tai–Kadai", :code => "tai", :parent => nil, :url => "https://en.wikipedia.org/wiki/Tai%E2%80%93Kadai_languages"), i+=1 )
# Turkic
add_row( NaturalLanguageFamily.new( :name => "Turkic", :code => "trk", :parent => nil, :url => "https://en.wikipedia.org/wiki/Turkic_languages"), i+=1 )
# Uralic
add_row( NaturalLanguageFamily.new( :name => "Uralic", :code => "urj", :parent => nil, :url => "https://en.wikipedia.org/wiki/Uralic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Finno-Ugric", :code => "fiu", :parent => NaturalLanguageFamily.where( name: "Uralic" ).first, :url => "https://en.wikipedia.org/wiki/Finno-Ugric_languages"), i+=1 )

#add_row( NaturalLanguageFamily.new( :name => "XXXXX", :code => "XX", :parent => NaturalLanguageFamily.where( name: "XXXXX" ).first, :url => "XXXXX"), i+=1 )

# Sino-Tibetan
add_row( NaturalLanguageFamily.new( :name => "Sino-Tibetan", :code => "sit", :parent => nil, :url => "https://en.wikipedia.org/wiki/Sino-Tibetan_languages"), i+=1 )
#add_row( NaturalLanguageFamily.new( :name => "Chinese", :code => "zhx", :parent => NaturalLanguageFamily.where( name: "Sino-Tibetan" ), :url => "https://en.wikipedia.org/wiki/Varieties_of_Chinese"), i+=1 )


puts "Creating natural languages"
i = 0

=begin 
# XXXXXX   
add_row( NaturalLanguage.new( 
    :name => "XXXXX", 
    :code => "XX", 
    :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, 
    :active => true, 
    :url => "XXXXX" 
    ), i+=1 
)
=end

# Afrikaans
add_row( NaturalLanguage.new( 
    :name => "Afrikaans", 
    :code => "af", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Afrikaans" 
    ), i+=1 
)

# Albanian  
add_row( NaturalLanguage.new( 
    :name => "Albanian", 
    :code => "sq", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Indo-European" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Albanian_language" 
    ), i+=1 
)

# Amharic   
add_row( NaturalLanguage.new( 
    :name => "Amharic", 
    :code => "am", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Semitic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Amharic" 
    ), i+=1 
)

# Arabic
add_row( NaturalLanguage.new( 
    :name => "Arabic", 
    :code => "ar", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Semitic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Arabic" 
    ), i+=1 
)

# Armenian
add_row( NaturalLanguage.new( 
    :name => "Armenian", 
    :code => "hy", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Indo-European" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Armenian_language" 
    ), i+=1 
)

# Azerbaijani
add_row( NaturalLanguage.new( 
    :name => "Azerbaijani", 
    :code => "az", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Turkic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Azerbaijani_language" 
    ), i+=1 
)

# Basque
add_row( NaturalLanguage.new( 
    :name => "Basque", 
    :code => "eu", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Language isolate" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Basque_language" 
    ), i+=1 
)

# Belarusian
add_row( NaturalLanguage.new( 
    :name => "Belarusian", 
    :code => "be", 
    :natural_language_family => NaturalLanguageFamily.where( name: "East Slavic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Belarusian_language" 
    ), i+=1 
)

# Bengali  
add_row( NaturalLanguage.new( 
    :name => "Bengali", 
    :code => "bn", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Indo-Aryan" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Bengali_language" 
    ), i+=1 
)

# Bosnian
add_row( NaturalLanguage.new( 
    :name => "Bosnian", 
    :code => "bs", 
    :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Bosnian_language" 
    ), i+=1 
)

# Bulgarian
add_row( NaturalLanguage.new( 
    :name => "Bulgarian", 
    :code => "bg", 
    :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Bulgarian_language" 
    ), i+=1 
)

# Burmese
add_row( NaturalLanguage.new( 
    :name => "Burmese", 
    :code => "my", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Sino-Tibetan" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Burmese_language" 
    ), i+=1 
)

# Catalan
add_row( NaturalLanguage.new( 
    :name => "Catalan", 
    :code => "ca", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Catalan_language" 
    ), i+=1 
)

# Cebuano
add_row( NaturalLanguage.new( 
    :name => "Cebuano", 
    :code => "ceb", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Philippine" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Cebuano_language" 
    ), i+=1 
)

# Corsican 
add_row( NaturalLanguage.new( 
    :name => "Corsican", 
    :code => "co", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Corsican_language" 
    ), i+=1 
)

# Croation
add_row( NaturalLanguage.new( 
    :name => "Croatian", 
    :code => "hr", 
    :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Croatian_language" 
    ), i+=1 
)

# Czech
add_row( NaturalLanguage.new( 
    :name => "Czech", 
    :code => "cs", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Czech_language" 
    ), i+=1 
)

# Danish
add_row( NaturalLanguage.new( 
    :name => "Danish", 
    :code => "da", 
    :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Danish_language" 
    ), i+=1 
)

# English
add_row( NaturalLanguage.new( 
    :name => "English", 
    :code => "en", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/English_language" 
    ), i+=1 
)

# Estonian
add_row( NaturalLanguage.new( 
    :name => "Estonian", 
    :code => "et", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Finno-Ugric" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Finnic_languages" 
    ), i+=1 
)

# Finnish
add_row( NaturalLanguage.new( 
    :name => "Finnish", 
    :code => "fi", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Finno-Ugric" ).first, 
    :active => true, :url => "https://en.wikipedia.org/wiki/Finnish_language" 
    ), i+=1 
)

# French
add_row( NaturalLanguage.new( 
    :name => "French", 
    :code => "fr", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/French_language" 
    ), i+=1 
)

# Frisian
add_row( NaturalLanguage.new( 
    :name => "Frisian", 
    :code => "fy", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/West_Frisian_language" 
    ), i+=1 
)

# Galician
add_row( NaturalLanguage.new( 
    :name => "Galician", 
    :code => "gl", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Galician_language" 
    ), i+=1 
)

# Georgian
add_row( NaturalLanguage.new( 
    :name => "Georgian", 
    :code => "ka", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Kartvelian" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Georgian_language" 
    ), i+=1 
)

# German
add_row( NaturalLanguage.new( 
    :name => "German", 
    :code => "de", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/German_language" 
    ), i+=1 
)

# Greek   
add_row( NaturalLanguage.new( 
    :name => "Greek", 
    :code => "el", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Hellenic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Greek_language" 
    ), i+=1 
)

# Gujarati
add_row( NaturalLanguage.new( 
    :name => "Gujarati", 
    :code => "gu", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Indo-Aryan" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Gujarati_language" 
    ), i+=1 
)

# Haitian Creole
add_row( NaturalLanguage.new( 
    :name => "Haitian Creole", 
    :code => "ht", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Haitian_Creole" 
    ), i+=1 
)

# Hawaiian
add_row( NaturalLanguage.new( 
    :name => "Hawaiian", 
    :code => "haw", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Hawaiian_language" 
    ), i+=1 
)

=begin 
# XXXXXX   
add_row( NaturalLanguage.new( 
    :name => "XXXXX", 
    :code => "XX", 
    :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, 
    :active => true, 
    :url => "XXXXX" 
    ), i+=1 
)
=end

# Hebrew
add_row( NaturalLanguage.new( 
    :name => "Hebrew", 
    :code => "iw", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Semitic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Hebrew_language" 
    ), i+=1 
)


# Hindi
add_row( NaturalLanguage.new( 
    :name => "Hindi", 
    :code => "hi", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Indo-Aryan" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Hindi" 
    ), i+=1 
)

# Hmong
add_row( NaturalLanguage.new( 
    :name => "Hmong", 
    :code => "hmn", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Hmong-Mien" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Hmong_language" 
    ), i+=1 
)

# Hungarian
add_row( NaturalLanguage.new( 
    :name => "Hungarian", 
    :code => "hu", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Finno-Ugric" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Hungarian_language" 
    ), i+=1 
)

# Icelandic
add_row( NaturalLanguage.new( 
    :name => "Icelandic", 
    :code => "is", 
    :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Icelandic_language" 
    ), i+=1 
)


# Indonesian
add_row( NaturalLanguage.new( 
    :name => "Indonesian", 
    :code => "id", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Malayan" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Indonesian_language" 
    ), i+=1 
)

# Irish
add_row( NaturalLanguage.new( 
    :name => "Irish", 
    :code => "ga", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Celtic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Irish_language" 
    ), i+=1 
)

# Italian
add_row( NaturalLanguage.new( 
    :name => "Italian", 
    :code => "it", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Italian_language" 
    ), i+=1 
)

# Japanese
add_row( NaturalLanguage.new( 
    :name => "Japanese", 
    :code => "ja", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Japonic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Japanese_language" 
    ), i+=1 
)

# Javanese
add_row( NaturalLanguage.new( 
    :name => "Javanese", 
    :code => "jw", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Sunda-Sulawesi" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Javanese_language" 
    ), i+=1 
)

# Kannada
add_row( NaturalLanguage.new( 
    :name => "Kannada", 
    :code => "kn", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Dravidian" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Kannada" 
    ), i+=1 
)

# Kazakh
add_row( NaturalLanguage.new( 
    :name => "Kazakh", 
    :code => "kk", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Turkic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Kazakh_language" 
    ), i+=1 
)

# Khmer
add_row( NaturalLanguage.new( 
    :name => "Khmer", 
    :code => "km", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Austro-Asiatic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Khmer_language" 
    ), i+=1 
)

# Korean
add_row( NaturalLanguage.new( 
    :name => "Korean", 
    :code => "ko", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Koreanic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Korean_language" 
    ), i+=1 
)

# Kurdish
add_row( NaturalLanguage.new( 
    :name => "Kurdish", 
    :code => "ku", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Iranian" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Kurdish_languages" 
    ), i+=1 
)

# Kyrgyz
add_row( NaturalLanguage.new( 
    :name => "Kyrgyz", 
    :code => "ky", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Turkic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Kyrgyz_language" 
    ), i+=1 
)

# Lao   
add_row( NaturalLanguage.new( 
    :name => "Lao", 
    :code => "lo", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Tai–Kadai" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Lao_language" 
    ), i+=1 
)

# Latvian
add_row( NaturalLanguage.new( 
    :name => "Latvian", 
    :code => "lv", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Baltic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Latvian_language" 
    ), i+=1 
)

# Lithuanian
add_row( NaturalLanguage.new( 
    :name => "Lithuanian", 
    :code => "lt", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Baltic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Lithuanian_language" 
    ), i+=1 
)

# Luxembourgish
add_row( NaturalLanguage.new( 
    :name => "Luxembourgish", 
    :code => "lb", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Luxembourgish_language" 
    ), i+=1 
)

# Macedonian
add_row( NaturalLanguage.new( 
    :name => "Macedonian", 
    :code => "mk", 
    :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Macedonian_language" 
    ), i+=1 
)

# Malagasy
add_row( NaturalLanguage.new( 
    :name => "Malagasy", 
    :code => "mg", 
    :natural_language_family => NaturalLanguageFamily.where( name: "East Barito" ).first, 
    :active => true, :url => "https://en.wikipedia.org/wiki/Malagasy_language" 
    ), i+=1 
)

# Malay
add_row( NaturalLanguage.new( 
    :name => "Malay", 
    :code => "ms", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Malayan" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Malay_language" 
    ), i+=1 
)

# Malayalam
add_row( NaturalLanguage.new( 
    :name => "Malayalam", 
    :code => "ml", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Dravidian" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Malayalam" 
    ), i+=1 
)

# Maltese
add_row( NaturalLanguage.new( :name => "Maltese", 
    :code => "mt", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Semitic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Maltese_language" 
    ), i+=1 
)

# Maori  
add_row( NaturalLanguage.new( 
    :name => "Maori", 
    :code => "mi", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/M%C4%81ori_language" 
    ), i+=1 
)

# Marathi  
add_row( NaturalLanguage.new( 
    :name => "Marathi", 
    :code => "mr", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Indo-Aryan" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Marathi_language" 
    ), i+=1 
)

# Mongolian 
add_row( NaturalLanguage.new( 
    :name => "Mongolian", 
    :code => "mn", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Mongolic" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Mongolian_language" 
    ), i+=1 
)

# Persian
add_row( NaturalLanguage.new( 
    :name => "Persian", 
    :code => "fa", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Iranian" ).first, 
    :active => false, 
    :url => "https://en.wikipedia.org/wiki/Persian_language" 
    ), i+=1 
)

# Scottish Gaelic
add_row( NaturalLanguage.new( 
    :name => "Scottish Gaelic", 
    :code => "gd", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Celtic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Scottish_Gaelic" 
    ), i+=1 
)

# Spanish
add_row( NaturalLanguage.new( 
    :name => "Spanish", 
    :code => "es", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Spanish_language" 
    ), i+=1 
)

# Welsh
add_row( NaturalLanguage.new( 
    :name => "Welsh", 
    :code => "cy", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Celtic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Welsh_language" 
    ), i+=1 
)

# Chichewa
add_row( NaturalLanguage.new( 
    :name => "Chichewa", 
    :code => "ny", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Bantu" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Chewa_language" 
    ), i+=1 
)

# Russian  
add_row( NaturalLanguage.new( 
    :name => "Russian", 
    :code => "ru", 
    :natural_language_family => NaturalLanguageFamily.where( name: "East Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Russian_language" 
    ), i+=1 
)

# Shona
add_row( NaturalLanguage.new( 
    :name => "Shona", 
    :code => "sn", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Bantu" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Shona_language" 
    ), i+=1 
)

# Somali
add_row( NaturalLanguage.new( 
    :name => "Somali", 
    :code => "so", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Cushitic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Somali_language" 
    ), i+=1 
)

# Sotho
add_row( NaturalLanguage.new( 
    :name => "Sotho", 
    :code => "st", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Bantu" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Sotho_language" 
    ), i+=1 
)

# Sundanese  
add_row( NaturalLanguage.new( 
    :name => "Sundanese", 
    :code => "su", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Malayo-Sumbawan" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Sundanese_language" 
    ), i+=1 
)

# Uzbek
add_row( NaturalLanguage.new( 
    :name => "Uzbek", 
    :code => "uz", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Turkic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Uzbek_language" 
    ), i+=1 
)

# Xhosa
add_row( NaturalLanguage.new( 
    :name => "Xhosa", 
    :code => "xh", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Bantu" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Xhosa_language" 
    ), i+=1 
)

# Yoruba
add_row( NaturalLanguage.new( 
    :name => "Yoruba", 
    :code => "yo", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Yoruboid" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Yoruba_language" 
    ), i+=1 
)

=begin 
# XXXXXX   
add_row( NaturalLanguage.new( 
    :name => "XXXXX", 
    :code => "XX", 
    :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, 
    :active => true, 
    :url => "XXXXX" 
    ), i+=1 
)
=end
#add_row( NaturalLanguage.new( :name => "XXXXX", :code => "XX", :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, :active => true, :url => "XXXXX" ), i+=1 )

# Dutch
add_row( NaturalLanguage.new( 
    :name => "Dutch", 
    :code => "nl", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Dutch_language" 
    ), i+=1 
)

#add_row( NaturalLanguage.new( :name => "Fijian", :code => "fj", :natural_language_family => NaturalLanguageFamily.where( name: "Oceanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Fijian_language" ), i+=1 )

# Filipino
add_row( NaturalLanguage.new( 
    :name => "Filipino", 
    :code => "tl", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Philippine" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Filipino_language" 
    ), i+=1 
)

# Swahili
add_row( NaturalLanguage.new( 
    :name => "Swahili", 
    :code => "sw", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Bantu" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Swahili_language" 
    ), i+=1 
)

#add_row( NaturalLanguage.new( :name => "Yucatec Maya", :code => "yua", :natural_language_family => NaturalLanguageFamily.where( name: "Mayan" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Yucatec_Maya_language" ), i+=1 )

# Norwegian
add_row( NaturalLanguage.new( 
    :name => "Norwegian", 
    :code => "no", 
    :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Norwegian_language" 
    ), i+=1 
)

#add_row( NaturalLanguage.new( :name => "Otomi", :code => "otq", :natural_language_family => NaturalLanguageFamily.where( name: "Oto-Manguean" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Otomi_language" ), i+=1 )

# Polish
add_row( NaturalLanguage.new( 
    :name => "Polish", 
    :code => "pl", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Polish_language" 
    ), i+=1 
)

# Portuguese
add_row( NaturalLanguage.new( 
    :name => "Portuguese", :code => "pt", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Portuguese_language" 
    ), i+=1 
)

# Romanian
add_row( NaturalLanguage.new( 
    :name => "Romanian", 
    :code => "ro", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Romance" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Romanian_language" 
    ), i+=1 
)

# Samoan
add_row( NaturalLanguage.new( 
    :name => "Samoan", 
    :code => "sm", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Samoan_language" 
    ), i+=1 
)

# Serbian
add_row( NaturalLanguage.new( 
    :name => "Serbian", 
    :code => "sr-Latn", 
    :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Serbian_language" 
    ), i+=1 
)

# Slovak
add_row( NaturalLanguage.new( 
    :name => "Slovak", 
    :code => "sk", 
    :natural_language_family => NaturalLanguageFamily.where( name: "West Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Slovak_language" 
    ), i+=1 
)

# Slovenian
add_row( NaturalLanguage.new( 
    :name => "Slovenian", 
    :code => "sl", 
    :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Slovene_language" 
    ), i+=1 
)

# Swedish
add_row( NaturalLanguage.new( 
    :name => "Swedish", 
    :code => "sv", 
    :natural_language_family => NaturalLanguageFamily.where( name: "North Germanic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Swedish_language" 
    ), i+=1 
)

#add_row( NaturalLanguage.new( :name => "Tahitian", :code => "ty", :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Tahitian_language" ), i+=1 )
#add_row( NaturalLanguage.new( :name => "Tongan", :code => "to", :natural_language_family => NaturalLanguageFamily.where( name: "Polynesian" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Tongan_language" ), i+=1 )

# Turkish
add_row( NaturalLanguage.new( 
    :name => "Turkish", 
    :code => "tr", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Turkic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Turkish_language" 
    ), i+=1 
)

# Vietnamese
add_row( NaturalLanguage.new( 
    :name => "Vietnamese", 
    :code => "vi", 
    :natural_language_family => NaturalLanguageFamily.where( name: "Austro-Asiatic" ).first, 
    :active => true, 
    :url => "https://en.wikipedia.org/wiki/Vietnamese_language" 
    ), i+=1 
)


#add_row( NaturalLanguage.new( :name => "XXXXX", :code => "XX", :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, :active => true, :url => "XXXXX" ), i+=1 )
#add_row( NaturalLanguage.new( :name => "XXXXX", :code => "XX", :natural_language_family => NaturalLanguageFamily.where( name: "XXXXX" ).first, :active => true, :url => "XXXXX" ), i+=1 )

=begin
## Create Natural Languages
puts "Creating natural languages"
i = 0
add_row( NaturalLanguage.new( :name => "Afrikaans", :code => "af", :natural_language_family => NaturalLanguageFamily.where( name: "West Germanic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Afrikaans" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Bosnian", :code => "bs-Latn", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => true, :url => "https://en.wikipedia.org/wiki/Bosnian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Bulgarian", :code => "bg", :natural_language_family => NaturalLanguageFamily.where( name: "South Slavic" ).first, :active => false, :url => "https://en.wikipedia.org/wiki/Bulgarian_language" ), i+=1 )
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

=end