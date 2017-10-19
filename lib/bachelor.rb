
def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      #puts value[0]["name"]
      return value[0]["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, stat|
    stat.each do |key, value|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestant_counter = 0
  data.each do |season, stat|
    stat.each do |key, value|
      if key["hometown"] == hometown
        contestant_counter += 1
      end
    end
  end
  return contestant_counter
end

def get_occupation(data, hometown)
  data.each do |season, stat|
    stat.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  number_of_contestants = data[season].length

  ages = 0
  for index in 0..number_of_contestants - 1
    ages += data[season][index]["age"].to_i
  end
  puts ages
  avg =  Float(ages) / Float(number_of_contestants)
  return avg.round
end
