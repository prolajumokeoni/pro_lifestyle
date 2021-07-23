json.extract! article, :id, :title, :image, :body, :author_id, :category_id, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)
