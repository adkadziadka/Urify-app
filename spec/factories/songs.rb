FactoryGirl.define do
  factory :song do
    title   			 { Faker::Book.title }
    year					 { Faker::Number.number(2) }
		description    { Faker::Lorem.sentence }
    artist				 { Artist.new(name: Faker::Name.first_name, age: Faker::Number.number(2), img_url: Faker::Internet.url)}
  end
end
