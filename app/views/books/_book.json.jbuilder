json.extract! book, :id, :title, :Author, :ISBN, :Publisher, :Language, :onloan, :created_at, :updated_at
json.url book_url(book, format: :json)
