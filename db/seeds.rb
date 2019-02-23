require 'faker'
require 'pry'
def random_image
  "/img/#{rand(1..16)}.jpg"
end

30.times { Author.create!(name: Faker::Name.name) }

['Mobile development',
  'Photo',
  'Web development',
  'Web design'].each { |category| Category.create!(title: category) }
categories = Category.all

30.times do |i|
  book = Book.create!(title: Faker::Book.title,
                    price: Faker::Number.number(4).to_i / 100.00,
                    description: Faker::Lorem.paragraph(5),
                    quantity: rand(0..10),
                    category_id: categories.sample.id,
                    sold: rand(0..10),
                    image_name: random_image)
  book.authors << Author.all.sample(rand(1..2))
end
