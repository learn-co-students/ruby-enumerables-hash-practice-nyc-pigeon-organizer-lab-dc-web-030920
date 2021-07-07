require 'pry'
def nyc_pigeon_organizer(data)

pigeon_list = {}

data.each {|key,value|
value.each {|new_value,names|
names.each {|name|

if !pigeon_list[name]
  pigeon_list[name]= {}
end

if !pigeon_list[name][key]
  pigeon_list[name][key] = []
end

 pigeon_list[name][key] << new_value.to_s
}
}
}
pigeon_list
end
