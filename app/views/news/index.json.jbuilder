json.array!(@news) do |news|
  json.extract! news, :id, :name, :content
  json.url news_url(news, format: :json)
end
