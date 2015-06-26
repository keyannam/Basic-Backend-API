json.array! @sshhhs do |sshhh|

	json.id sshhh.id
	json.secrets sshhh.secrets

  json.user do
    json.id sshhh.user.id
    json.username sshhh.user.username
  end
end
