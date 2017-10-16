require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["status"] == "Winner" && season == seasons
        return contestant["name"].partition(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_of_ages = 0
  count_of_ages = 0
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        sum_of_ages += contestant["age"].to_i
        count_of_ages += 1
      end
    end
  end
  puts sum_of_ages
  puts count_of_ages
  (sum_of_ages.to_f / count_of_ages.to_f).round()
end
