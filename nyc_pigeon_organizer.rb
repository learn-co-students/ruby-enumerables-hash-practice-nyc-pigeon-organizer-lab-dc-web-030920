def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  
  
  data.each {|key, value|
   value.each{|val, names|
   names.each{ |name|
   
   if !pigeon_list[name]
     pigeon_list[name] = {}
  end
     
   
   if !pigeon_list[name][key]
     pigeon_list[name][key] = []
   end  
   
   pigeon_list[name][key] << val.to_s
   
   
     
   }
     
   } 
  
  }
 
  return pigeon_list
end
