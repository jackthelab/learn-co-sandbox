#Arrays and Hashes

#Arrays -- ordered collection of elements (or sometimes called "members"). Elements are zero-indexed. The index is a numerical identifier of an element.

the_beatles = ["Paul", "John", "Ringo", "George"]

#Hashes -- A look up table or dictionary (key, value pairs). A big difference of hashes is that identifiers are strings or symbols in hashes (instead of numbers like indexes of an array) -- maybe a little simplified.

band_members = { :bass => "Paul", :rhythm_guitar => "John", :drums => "Ringo", :lead_guitar => "George" }

#apparently symbols (:key => value) version of giving key is preferred in Ruby when making a hash. However could also be made with | key: value | (see british_bands hash) format or | "key" => value format. |

british_bands = { liverpool: "The Beatles", manchester: "The Smiths", coventry: "Delia Derbyshire and the BBC Radiophonic Band", london: "Ziggy Stardust and the Spiders from Mars" }

british_bands[:USA] = "Journey"


#puts the_beatles[2]
puts band_members[:bass]

puts british_bands
puts british_bands[:liverpool]

#can nest these types of data too -- see below for example

english_music_by_city = {
  :manchester => [
    {
      :band_name => "The Smiths",
      :member_names => ["Morrissey", "Johnny", "Andy", "Mike"]
    },
    {
      :band_name => "Joy Division",
      :member_names => ["Peter", "Stephen", "Bernard", "Ian"]
    }
    ]
}

#will use the lookup operator to, i.e. [ ], to dig into these nested collections 

puts english_music_by_city[:manchester][0][:band_name]

puts " "

puts "There were #{english_music_by_city[:manchester][0][:member_names].length} members in #{english_music_by_city[:manchester][0][:band_name]}."
