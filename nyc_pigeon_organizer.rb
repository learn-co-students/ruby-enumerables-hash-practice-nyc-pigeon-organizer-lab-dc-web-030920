require 'pry'
def nyc_pigeon_organizer(data)
pigeons = {}
data.each do
    |data_key,data_value|
    data_value.each do
      |attribute,names|
      names.each do
        |name|
        if !pigeons[name]
              pigeons[name] = {}
        end
        if !pigeons[name][data_key]
              pigeons[name][data_key] = []
        end
        pigeons[name][data_key].push(attribute.to_s)
      end
    end
  end
pigeons
end
