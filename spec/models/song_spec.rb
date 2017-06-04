require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is valid when all the attributes are present" do
      song = build :song
      song.valid?
      expect(song.errors).to be_empty
    end
  end
end
