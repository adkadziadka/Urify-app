require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
		
		it "is invalid a duplicate name" do
			Artist.create!(name: "Shakira", age: 24, img_url: "www.shakira.com")
      artist = Artist.new(name: "Shakira")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
		
		it "is invalid without an age" do
      artist = Artist.new(age: nil)
      artist.valid?
      expect(artist.errors).to have_key(:age)
    end
		
		it "is invalid an age with 4 numbers" do
      artist = Artist.new(age: 1234)
      artist.valid?
      expect(artist.errors).to have_key(:age)
    end
	end
end
