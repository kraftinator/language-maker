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
#NaturalLanguage.destroy_all
NaturalLanguageFamily.destroy_all

## Create Natural Language Families
puts "Creating natural language families"
i = 0
# Austronesian
add_row( NaturalLanguageFamily.new( :name => "Austronesian", :code => "map", :parent => nil, :url => "https://en.wikipedia.org/wiki/Austronesian_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Malayo-Polynesian", :code => "poz", :parent => NaturalLanguageFamily.find_by_name( "Austronesian" ), :url => "https://en.wikipedia.org/wiki/Malayo-Polynesian_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Oceanic", :code => nil, :parent => NaturalLanguageFamily.find_by_name( "Malayo-Polynesian" ), :url => "https://en.wikipedia.org/wiki/Oceanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Philippine", :code => "phi", :parent => NaturalLanguageFamily.find_by_name( "Malayo-Polynesian" ), :url => "https://en.wikipedia.org/wiki/Philippine_languages"), i+=1 )

# Indo-European
add_row( NaturalLanguageFamily.new( :name => "Indo-European", :code => "ine", :parent => nil, :url => "https://en.wikipedia.org/wiki/Indo-European_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Germanic", :code => "gem", :parent => NaturalLanguageFamily.find_by_name( "Indo-European" ), :url => "https://en.wikipedia.org/wiki/Germanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "West Germanic", :code => "gmw", :parent => NaturalLanguageFamily.find_by_name( "Germanic" ), :url => "https://en.wikipedia.org/wiki/West_Germanic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "North Germanic", :code => "gmq", :parent => NaturalLanguageFamily.find_by_name( "https://en.wikipedia.org/wiki/North_Germanic_languages" ), :url => "XXXXX"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Balto-Slavic", :code => nil, :parent => NaturalLanguageFamily.find_by_name( "Indo-European" ), :url => "https://en.wikipedia.org/wiki/Balto-Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Baltic", :code => "bat", :parent => NaturalLanguageFamily.find_by_name( "Balto-Slavic" ), :url => "https://en.wikipedia.org/wiki/Baltic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Slavic", :code => "sla", :parent => NaturalLanguageFamily.find_by_name( "Balto-Slavic" ), :url => "https://en.wikipedia.org/wiki/Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Italic", :code => "itc", :parent => NaturalLanguageFamily.find_by_name( "Indo-European" ), :url => "https://en.wikipedia.org/wiki/Italic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Romance", :code => "roa", :parent => NaturalLanguageFamily.find_by_name( "Italic" ), :url => "https://en.wikipedia.org/wiki/Romance_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "West Slavic", :code => "zlw", :parent => NaturalLanguageFamily.find_by_name( "Slavic" ), :url => "https://en.wikipedia.org/wiki/West_Slavic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "South Slavic", :code => "zls", :parent => NaturalLanguageFamily.find_by_name( "Slavic" ), :url => "https://en.wikipedia.org/wiki/South_Slavic_languages"), i+=1 )
# Uralic
add_row( NaturalLanguageFamily.new( :name => "Uralic", :code => "urj", :parent => nil, :url => "https://en.wikipedia.org/wiki/Uralic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Finno-Ugric", :code => "fiu", :parent => NaturalLanguageFamily.find_by_name( "Uralic" ), :url => "https://en.wikipedia.org/wiki/Finno-Ugric_languages"), i+=1 )

#add_row( NaturalLanguageFamily.new( :name => "XXXXX", :code => "XX", :parent => NaturalLanguageFamily.find_by_name( "XXXXX" ), :url => "XXXXX"), i+=1 )

=begin
# Afro-Asiatic
add_row( NaturalLanguageFamily.new( :name => "Afro-Asiatic", :code => "afa", :parent => nil, :url => "https://en.wikipedia.org/wiki/Afroasiatic_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Semitic", :code => "sem", :parent => NaturalLanguageFamily.find_by_name( "Afro-Asiatic"), :url => "https://en.wikipedia.org/wiki/Semitic_languages"), i+=1 )

# Sino-Tibetan
add_row( NaturalLanguageFamily.new( :name => "Sino-Tibetan", :code => "sit", :parent => nil, :url => "https://en.wikipedia.org/wiki/Sino-Tibetan_languages"), i+=1 )
add_row( NaturalLanguageFamily.new( :name => "Chinese", :code => "zhx", :parent => NaturalLanguageFamily.find_by_name( "Sino-Tibetan" ), :url => "https://en.wikipedia.org/wiki/Varieties_of_Chinese"), i+=1 )
=end


## Create Natural Languages
puts "Creating natural languages"
i = 0
add_row( NaturalLanguage.new( :name => "Afrikaans", :code => "af", :natural_language_family => NaturalLanguageFamily.find_by_name( "West Germanic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Afrikaans" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Bosnian", :code => "bs-Latn", :natural_language_family => NaturalLanguageFamily.find_by_name( "South Slavic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Bosnian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Bulgarian", :code => "bg", :natural_language_family => NaturalLanguageFamily.find_by_name( "South Slavic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Bulgarian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Catalan", :code => "ca", :natural_language_family => NaturalLanguageFamily.find_by_name( "Romance" ), :active => true, :url => "https://en.wikipedia.org/wiki/Catalan_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Croatian", :code => "hr", :natural_language_family => NaturalLanguageFamily.find_by_name( "South Slavic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Croatian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Czech", :code => "cs", :natural_language_family => NaturalLanguageFamily.find_by_name( "West Slavic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Czech_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Danish", :code => "da", :natural_language_family => NaturalLanguageFamily.find_by_name( "North Germanic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Danish_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Dutch", :code => "nl", :natural_language_family => NaturalLanguageFamily.find_by_name( "West Germanic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Dutch_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "English", :code => "en", :natural_language_family => NaturalLanguageFamily.find_by_name( "West Germanic" ), :active => true, :url => "https://en.wikipedia.org/wiki/English_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Estonian", :code => "et", :natural_language_family => NaturalLanguageFamily.find_by_name( "Finno-Ugric" ), :active => true, :url => "https://en.wikipedia.org/wiki/Finnic_languages" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Fijian", :code => "fj", :natural_language_family => NaturalLanguageFamily.find_by_name( "Oceanic" ), :active => true, :url => "https://en.wikipedia.org/wiki/Fijian_language" ), i+=1 )
add_row( NaturalLanguage.new( :name => "Filipino", :code => "fil", :natural_language_family => NaturalLanguageFamily.find_by_name( "Philippine" ), :active => true, :url => "https://en.wikipedia.org/wiki/Filipino_language" ), i+=1 )

#add_row( NaturalLanguage.new( :name => "XXXXX", :code => "XX", :natural_language_family => NaturalLanguageFamily.find_by_name( "XXXXX" ), :active => true, :url => "XXXXX" ), i+=1 )

=begin
Finnish
fi
French
fr
German
de
Greek
el
Haitian Creole
ht
Hebrew
he
Hindi
hi
Hmong Daw
mww
Hungarian
hu
Indonesian
id
Italian
it
Japanese
ja
Kiswahili
sw
Klingon
tlh
Klingon (pIqaD)
tlh-Qaak
Korean
ko
Latvian
lv
Lithuanian
lt
Malagasy
mg
Malay
ms
Maltese
mt
Yucatec Maya
yua
Norwegian Bokmål
no
Querétaro Otomi
otq
Persian
fa
Polish
pl
Portuguese
pt
Romanian
ro
Russian
ru
Samoan
sm
Serbian (Cyrillic)
sr-Cyrl
Serbian (Latin)
sr-Latn
Slovak
sk
Slovenian
sl
Spanish
es
Swedish
sv
Tahitian
ty
Thai
th
Tongan
to
Turkish
tr
Ukrainian
uk
Urdu
ur
Vietnamese
vi
Welsh
cy
=end
