json.array!(@documents) do |document|
  json.extract! document, :id, :title, :path, :user_id
  json.url document_url(document, format: :json)
end
