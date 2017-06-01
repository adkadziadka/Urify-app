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



song1 = Song.create(title: "La Tortura", 					artist: artist1, 			description: "Lovely song about Colombian tortures", 		year: "2007")
song2 = Song.create(title: "Hello", 							artist: artist2, 			description: "Sending love to boyfriend new lover", 		year: "2016")
song3 = Song.create(title: "Gataway girl",				artist: artist3, 			description: "Girl froman Irish band fell in love with an English man",			year: "2017")
song4 = Song.create(title: "Cocoon",							artist: artist4, 			description: "Who would have known", 			year: "2001")
song5 = Song.create(title: "Why dont you go",			artist: artist5, 			description: "If you have to live your life, I let you go", 			year: "1998")
song6 = Song.create(title: "I cant rely on you", 	artist: artist6, 			description: "Some girl scream on reallu nice video", 			year: "2013")





