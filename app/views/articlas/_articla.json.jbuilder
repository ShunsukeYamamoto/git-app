json.extract! articla, :id, :title, :author, :text, :created_at, :updated_at
json.url articla_url(articla, format: :json)
