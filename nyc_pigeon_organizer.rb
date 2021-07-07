def nyc_pigeon_organizer(data)
  pigeon_list = {}
  
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|   #zeros in on names 
        
        if pigeon_list[name] == nil   #if not in  new hash 
          pigeon_list[name] = {}     #add to hash key 
        end
        
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
          
              #if current characterist isn't present for 
              #for current pigon, then add it 
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)
        
            #push the characteristics as strings. 
        
      end
    end 
  end
  pigeon_list
end