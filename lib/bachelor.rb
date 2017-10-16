def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name_array = contestant["name"].split
      return name_array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  town_counter = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown
        town_counter += 1
      end
    end
  end
  town_counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |contestant|
    age_array.push(contestant["age"].to_f)
  end
  total = age_array.inject{|sum, n| sum + n}
  return_val = (total / age_array.size.to_f).round
end
