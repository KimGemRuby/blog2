json.extract! post, :id, :title, :body, :name, :email, :contact, :comment, :User, :team, :content, :first_name, :last_name, :skill, :created_at, :updated_at
json.url post_url(post, format: :json)
