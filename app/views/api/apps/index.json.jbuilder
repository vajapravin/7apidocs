json.array! @apps do |app|
	json.id app._id.as_json["$oid"]
	json.name app.name
	json.desc app.desc
	json.language app.language
end