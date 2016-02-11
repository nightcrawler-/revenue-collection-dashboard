json.array!(@p_users) do |p_user|
  json.extract! p_user, :id, :first_name, :last_name, :email, :id_number, :verified
  json.url p_user_url(p_user, format: :json)
end
