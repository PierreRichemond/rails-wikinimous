puts "cleaning the db..."
Article.destroy_all

puts "creating articles"

10.times do
  @article = Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence
  )
  puts "Article with #{@article.id} is created"
end
 puts "done"
