require 'rails_helper'

describe "CRUD songs" do

  let(:artist) { Artist.create(name: "Shakira", age: 24, img_url: "https://goo.gl/YqhkO6") }

  let!(:song1) { Song.create(title: "song1", artist: artist, description: "Lorem ipsum", year: 1234) }
  let!(:song2) { Song.create(title: "song2", artist: artist, description: "Lorem ipsum", year: 1234) }

  it "shows correctly the show view of artist" do
    visit artist_url(artist.id)

    expect(page).to have_text("song1")
    expect(page).to have_text("song2")
  end

  it "adds a new song via AJAX" do
    visit artist_url(artist.id)

    click_link('Add new song')

    # We fill out the form
    fill_in('title', :with => 'Imagine')
    fill_in('artist', :with => 'Shakira')
    fill_in('description', :with => 'A cool song')
    fill_in('year', :with => 2012)

    click_button('Add new song')

    # We refresh the page
    visit artist_url(artist.id)

    # We see the new song
    expect(page).to have_text("Imagine")
  end

  it "deletes a song via AJAX" do
    visit artist_url(artist.id)

    # We have two songs
    expect(page).to have_text("song1")
    expect(page).to have_text("song2")

    # We delete the first song
    first('button').click

    # We refresh the page
    visit artist_url(artist.id)

    # Then we don't see the first song any more
    expect(page).to_not have_text("song1")
    expect(page).to have_text("song2")  
  end

   it "deletes all songs via AJAX" do
    visit artist_url(artist.id)

    # We have two songs
    expect(page).to have_text("song1")
    expect(page).to have_text("song2")

    click_button('Delete all songs')

    # We refresh the page
    visit page.driver.browser.current_url

    # We have no songs any more
    expect(page).to_not have_text("song1")
    expect(page).to_not have_text("song2") 

    expect(page).to have_text("This artist has any songs yet :(")  
  end

end