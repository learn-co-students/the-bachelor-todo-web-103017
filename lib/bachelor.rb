require 'pry'

def get_first_name_of_season_winner(data, season)
  names = []
  first_name = ""

  data.each do |seasons, array|
    if seasons == season

      array.each do |nested_hash|
        if nested_hash["status"] == "Winner"
          nested_hash.each do |key, value|
            if key == "name"
              names = value.split(" ")
              first_name = names[0]
            end
          end
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  name = ""

  data.each do |seasons, array|
    array.each do |nested_hash|
     if nested_hash["occupation"] == occupation
       name = nested_hash["name"]
     end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |seasons, array|
    array.each do |nested_hash|
      nested_hash.each do |key, value|
        if key == "hometown" && value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, array|
    array.each do |nested_hash|
      if nested_hash["hometown"] == hometown
        return nested_hash["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  ages = 0
  l = 0

  data[season].each do |array|
    ages += (array["age"]).to_i
    l += 1
  end
  (ages/l.to_f).round(0)
end
