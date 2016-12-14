json.extract! donation, :id, :content, :created_at, :updated_at
json.url donation_url(donation, format: :json)