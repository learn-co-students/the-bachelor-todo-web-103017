require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season1, array_of_contestants|
    if season1 == season
      array_of_contestants.each do |cont_hash|
        if cont_hash["status"] == "Winner"
          array = cont_hash["name"].split(" ")
          return array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |cont_hash|
      if cont_hash["occupation"] == occupation
        return cont_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |cont_hash|
      if cont_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |cont_hash|
      if cont_hash["hometown"].include?(hometown)
        return cont_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data.each do |season1, array_of_contestants|
    if season1 == season
      total_contestants = array_of_contestants.length
      array_of_contestants.each do |cont_hash|
        total_age += cont_hash["age"].to_f
      end
      return (total_age / total_contestants).round
    end
  end
end
