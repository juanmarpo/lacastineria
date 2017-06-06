json.extract! booker, :id, :name, :nickname, :contact, :email, :created_at, :updated_at
json.url booker_url(booker, format: :json)