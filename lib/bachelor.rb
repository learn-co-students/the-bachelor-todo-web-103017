def get_first_name_of_season_winner(data, season)
  data.each do |seasons, info|
    if seasons==season
      info.each do |contestant_info|
        if  contestant_info["status"] =="Winner"
          return contestant_info["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, info|
      info.each do |contestant_info|
        if  contestant_info["occupation"] == occupation
          return contestant_info["name"]
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
 counter=0
  data.each do |seasons, info|
      info.each do |contestant_info|
        if  contestant_info["hometown"] == hometown
          counter+=1
        end
      end
  end
 counter
end

def get_occupation(data, hometown)
  data.each do |seasons, info|
      info.each do |contestant_info|
        if  contestant_info["hometown"] == hometown
          return contestant_info["occupation"]
        end
      end
    end
end

def get_average_age_for_season(data, season)
 all_ages=[]
  data.each do |seasons, info|
    if seasons==season
       info.each do |contestant_info|
        all_ages<<contestant_info["age"].to_i
      end
    end
  end #this has array with all_ages
  sum=0
  all_ages.each do |num|
    sum+=num
  end
  average=sum.to_f/all_ages.length.to_f
  (average+0.5).to_i
  end
