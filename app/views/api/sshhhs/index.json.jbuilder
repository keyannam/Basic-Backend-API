json.array! @sshhhs, :id, :secrets, :user

json.array! @users do |user|
  json.id user.id
  json.name user.name

  json.sshhhs user.sshhhs do |sshhh|
    json.id sshhh.id
    json.secrets sshhh.secrets
  end
end
