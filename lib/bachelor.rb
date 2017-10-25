require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_num,participant|
    if season_num == season
      participant.each do |part|
        if part["status"] == "Winner"
          return part["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num,participant|
    participant.each do |part|
      if part["occupation"] == occupation
        return part["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  total = 0 # counter for hometown
  data.each do |season_num,participant|
    participant.each do |part|
      if part["hometown"] == hometown
        total += 1
      end
    end
  end
  return total
end

def get_occupation(data, hometown)
  data.each do |season_num,participant|
    participant.each do |part|
      if part["hometown"] == hometown
        return part["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  totalAges = 0
  totalParticipants = 0
  data.each do |season_num,participant|
    if season_num == season
      participant.each do |part|
        totalAges = totalAges + part["age"].to_f
        totalParticipants = totalParticipants + 1
      end
    end
  end
  average = totalAges.to_f/totalParticipants.to_f
  return average.round.to_i
end
