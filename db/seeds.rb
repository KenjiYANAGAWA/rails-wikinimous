p 'clearing db'
Article.destroy_all
10.times do
  new_article = Article.new(
    title: Faker::Quote.famous_last_words,
    content: Faker::Lorem.paragraph(sentence_count: 30)
  )
  new_article.save
end
p "now there are #{Article.count} articles"
