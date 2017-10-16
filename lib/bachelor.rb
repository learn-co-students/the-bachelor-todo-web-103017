require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  contestants = data[season]
  contestants.each do |person|
    if person.fetch("status") == "Winner"
      return person["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants_list|
    contestants_list.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants_list|
    contestants_list.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  collective_age = 0
  num_contestants = 0.0
  data[season].each do |person|
    age = person["age"].to_i
    collective_age += age
    num_contestants += 1
  end

  average = (collective_age/num_contestants)
  return average.round
  #binding.pry
end
