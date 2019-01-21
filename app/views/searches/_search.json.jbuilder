json.extract! search, :id, :title, :content, :img, :link, :created_at, :updated_at
json.url search_url(search, format: :json)
