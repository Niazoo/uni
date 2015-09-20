json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :price, :rakeno, :subjectcode, :idate, :rdate
  json.url book_url(book, format: :json)
end
