json.extract! user, :id, :id, :login_id, :name, :email, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
