json.extract! user, :id, :name, :email, :phone, :password_digest, :remember_digest, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
