require "pp"
require "pry"

def nyc_pigeon_organizer(data)
  pp data
  pigeons = {}
  data.each do |attribute, list|
    list.each do |singular_attrib, names|
      names.each do |pigeon|
        if pigeons.has_key?(pigeon)
          if pigeons[pigeon].has_key?(attribute)
            pigeons[pigeon][attribute] << singular_attrib.to_s
          else
            pigeons[pigeon][attribute] = [singular_attrib.to_s]
          end
        else
            pigeons[pigeon] = {attribute => [singular_attrib.to_s]}
        end
      end
    end
  end
  return pigeons
end
