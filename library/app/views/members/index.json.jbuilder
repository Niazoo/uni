json.array!(@members) do |member|
  json.extract! member, :id, :name, :email, :address, :amount, :idate, :rdate
  json.url member_url(member, format: :json)
end
