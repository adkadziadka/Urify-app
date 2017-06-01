Artist.destroy_all
Song.destroy_all

artist1 = Artist.create! ( { name: 'Shakira', age: 38, img_url: "https://goo.gl/YqhkO6"} )
artist2 = Artist.create! ( { name: 'Adele', age: 26, img_url: 'https://goo.gl/GFwyUG'} )
artist3 = Artist.create! ( { name: 'Ed Sheeran',	age: 29, img_url: 'https://goo.gl/syUfsc'} )
artist4 = Artist.create! ( { name: 'Jain', age: 23, img_url: 'https://goo.gl/iCxvGK'} )
artist5 = Artist.create! ( { name: 'Paddy Kelly', age: 48, img_url: 'https://goo.gl/EQRCFA'} )
artist6 = Artist.create! ( { name: 'Paloma Faith', age: 27, img_url: 'https://goo.gl/GhyXKB'} )
artist7 = Artist.create! ( { name: 'Lady Gaga', age: 41, img_url: 'https://goo.gl/jdXdAC'} )
artist8 = Artist.create! ( { name: 'Beirut', age: 30, img_url: 'https://goo.gl/RWEIyM'} )
artist9 = Artist.create! ( { name: 'John Legend', age: 28, img_url: 'https://goo.gl/29Ljrd'} )



song1 = Song.create!(title: "La Tortura", artist: artist1, description: "Lovely song about Colombian tortures", year: "2005")
song2 = Song.create!(title: "Send my love", artist: artist2, description: "Sending love to boyfriend new lover", year: "2016")
song3 = Song.create!(title: "Chantaje", artist: artist1, description: "Song about black mailing", year: "2016")
song4 = Song.create!(title: "Try Everything", artist: artist1, description: "Main song from movie Zootopia", year: "2015")
song5 = Song.create!(title: "Hello", artist: artist2, description: "One of the most popular songs of Adele", year: "2015")
song6 = Song.create!(title: "Dare", artist: artist1, description: "Song from album from 2014", year: "2014")
song7 = Song.create!(title: "Hips Dont Lie", artist: artist1, description: "Cover song from Dirty Dancing 2 movie", year: "2005")
song8 = Song.create!(title: "Cant remember to forget you", artist: artist1, description: "Singing with Rihanna", year: "2014")
song9 = Song.create!(title: "Dont you remember", artist: artist2, description: "Sad song abut last boyfriend", year: "2011")
song10 = Song.create!(title: "Hometown Glory", artist: artist2, description: "All love to hometown", year: "2008")
song11 = Song.create!(title: "Thinking Out Loud", artist: artist3, description: "Super romantic song", year: "2014")
song12 = Song.create!(title: "Come", artist: artist4, description: "Come, come baby...", year: "2015")
song13 = Song.create!(title: "I see fire", artist: artist3, description: "Soundtrack from Hobbit", year: "2014")
song14 = Song.create!(title: "Gataway girl", artist: artist3, description: "Girl froman Irish band fell in love with an English man", year: "2017")
song15 = Song.create!(title: "Makeba", artist: artist4, description: "Song with really cool videoclip", year: "2015")
song16 = Song.create!(title: "I cant rely on you", artist: artist6, description: "Some girl scream on reallu nice video", year: "2013")
song17 = Song.create!(title: "All of you", artist: artist9, description: "Fav song of most couples", year: "2014")
song18 = Song.create!(title: "You can blame me", artist: artist4, description: "From album ZANAKA", year: "2005")
song19 = Song.create!(title: "Why dont you go", artist: artist5, description: "If you have to live your life, I let you go", year: "1998")
song20 = Song.create!(title: "Trouble with my baby", artist: artist6, description: "Why is she talking italian there?", year: "2014")
song21 = Song.create!(title: "Elephant Gun", artist: artist8, description: "Elephant from Gulag Orkestar", year: "2006")
song22 = Song.create!(title: "Paparatzzi", artist: artist7, description: "Song about taking photos", year: "2010")
song23 = Song.create!(title: "Nantes", artist: artist8, description: "Just sweet", year: "2007")
song24 = Song.create!(title: "Postcards from Italy", artist: artist8, description: " Song from Gulag Orkestar", year: "2006")



