# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

#create main categories
3.times do
    Category.create(
        name: Faker::Music::RockBand.unique.name
    )
end

#create sub_categories
10.times do
    Category.create(
        name: Faker::Music::RockBand.unique.song,
        category_id: rand(1..3)
    )
end

#create url_types
10.times do
    UrlType.create(
        name: Faker::Music.unique.genre
    )
end

#create bookmars
20.times do
    Bookmark.create(
        name: Faker::Music.unique.album,
        url: Faker::Internet.unique.url,
        category_id: rand(1..13),
        url_type_id: rand(1..10)
    )
end




