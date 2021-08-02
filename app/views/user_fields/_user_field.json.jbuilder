json.extract! user_field, :id, :date_birth, :first_name, :last_name, :email, :city, :created_at, :updated_at
json.url user_field_url(user_field, format: :json)
