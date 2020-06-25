def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      return contestant["name"].split[0] if contestant["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |details|
      return details["name"] if details["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant|
    contestant.each do |details|
      counter += 1 if details["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |details|
      return details["occupation"] if details["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  sum = 0
  data[season].each do |contestant|
        counter += 1
        sum += contestant["age"].to_i
  end
  (sum.to_f/counter.to_f).round
end
