def nyc_pigeon_organizer(data)
data.each_with_object ({}) do |(key,hash), info|
  hash.each do |value, names|
    names.each do |name|
      info[name] ||={}
      info[name][key] ||= []
      info[name][key] << value.to_s 
    end
end
end
end
