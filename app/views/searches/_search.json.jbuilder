json.extract! search, :id, :title, :content, :image, :link, :created_at, :updated_at
json.url search_url(search, format: :json)
