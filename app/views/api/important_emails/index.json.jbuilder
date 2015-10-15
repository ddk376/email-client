json.array! @emails do |email|
   json.extract! email, :id, :from, :subject, :body, :created_at
end
