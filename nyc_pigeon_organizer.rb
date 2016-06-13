def nyc_pigeon_organizer(data)
  pigeon_list = {}
   data.each do |attribute, attribute_hash|
   attribute_hash.each do |specific_attribute, pigeon_arr|
   pigeon_arr.each do |pigeon|
   if pigeon_list[pigeon].nil?
   pigeon_list[pigeon] = {}
   end

pigeon_list[pigeon][attribute] ||= []
pigeon_list[pigeon][attribute] << specific_attribute.to_s
end
end
end
pigeon_list
end
