Artist.destroy_all
Song.destroy_all

artist1 = Artist.create! ( { name: 'Shakira', age: 38, img_url: "https://goo.gl/5F51cg"})
artist2 = Artist.create! ( { name: 'Adele', age: 26, img_url: 'https://goo.gl/xtiHnO'})
artist3 = Artist.create! ( { name: 'Ed Sheran', age: 29, img_url: 'https://goo.gl/owwO5d'})
artist4 = Artist.create! ( { name: 'Bjork', age: 45, img_url: 'https://goo.gl/3e7lii'})
artist5 = Artist.create! ( { name: 'Paddy Kelly', age: 48, img_url: 'https://goo.gl/0CyLSn'})
artist6 = Artist.create! ( { name: 'Paloma Faith', age: 27, img_url: 'https://goo.gl/cyJmdk'})
