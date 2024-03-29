# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 topics posted";

10.times do |blog|
    Blog.create!(
    title: 'My Blog Post #{blog}',
    body: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Explicabo neque temporibus natus, hic repudiandae, pariatur id tempora, cupiditate fuga est eum illo. Est deserunt laborum, repellat illum praesentium natus ipsum!',
    topic_id: Topic.last.id
    )
end

puts "10 blogs posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 blog posts created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby On Rails",
        body: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Explicabo neque temporibus natus, hic repudiandae, pariatur id tempora, cupiditate fuga est eum illo. Est deserunt laborum, repellat illum praesentium natus ipsum!",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x150"
    )
end

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Explicabo neque temporibus natus, hic repudiandae, pariatur id tempora, cupiditate fuga est eum illo. Est deserunt laborum, repellat illum praesentium natus ipsum!",
        main_image: "https://place-hold.it/600x400",
        thumb_image: "https://place-hold.it/350x150"
    )
end

puts "9 portfolios item created"

3.times do |technology|
    Technology.create!(
        name: "Technology #{technology}",
        portfolio_id: Portfolio.last.id
    )
end

puts "3 technologies created"