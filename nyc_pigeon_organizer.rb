def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |key, value|
    value.each do |key2, name|
      name.each do |name|
        if !result[name]
          result[name] = {}
        end

        if !result[name][key]
          result[name][key] = []
        end

        result[name][key] << key2.to_s
      end
    end
  end
  pp result
  result

end
