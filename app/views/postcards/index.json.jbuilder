json.array!(@postcards) do |postcard|
  json.extract! postcard, :id, :recipient_name, :recipient_email, :sender_name, :sender_email, :message, :image_url, :deliver_on, :status
  json.url postcard_url(postcard, format: :json)
end
