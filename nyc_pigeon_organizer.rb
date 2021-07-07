def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, info|
    info.each do |info, list|
      list.each do |bird|
        if pigeon_list[bird] == nil 
          pigeon_list[bird] = {}
        end 
        if pigeon_list[bird][color_gender_lives] == nil
          pigeon_list[bird][color_gender_lives] = []
        end
        pigeon_list[bird][color_gender_lives].push(info.to_s)
      end 
    end 
  end 
  pigeon_list
end