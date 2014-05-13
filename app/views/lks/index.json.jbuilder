json.array!(@lks) do |lk|
  json.extract! lk, :id, :name, :content, :url
  json.url lk_url(lk, format: :json)
end
