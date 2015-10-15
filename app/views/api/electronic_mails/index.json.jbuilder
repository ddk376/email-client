json.array! @emails do |email|
   json.extract! email, :id, :from, :subject, :body, :cc, :bcc :created_at
end
